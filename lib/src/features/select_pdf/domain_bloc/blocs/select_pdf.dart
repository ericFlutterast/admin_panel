import 'dart:async';

import 'package:admin_panel_for_library/src/features/select_pdf/data/select_pdf_repository_interface/select_pdf_repository_interface.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'select_pdf.freezed.dart';

@freezed
sealed class SelectPdfEvent with _$SelectPdfEvent {
  const SelectPdfEvent._();

  @With<_IdleEmitter>()
  @With<_ProcessingEmitter>()
  @With<_ErrorEmitter>()
  const factory SelectPdfEvent.pickMultipleFiles() = _$PickMultipleFilesEvent;

  @With<_IdleEmitter>()
  @With<_ProcessingEmitter>()
  @With<_ErrorEmitter>()
  const factory SelectPdfEvent.dropMultiplePdfFiles({required final int viewId}) =
      _$DropMultiplePdfFilesEvent;

  @With<_ProcessingEmitter>()
  @With<_SuccessEmitter>()
  const factory SelectPdfEvent.updateLoadingStatus({required final double percent}) =
      _$UpdateLoadingStatusEvent;
}

@freezed
sealed class SelectPdfState with _$SelectPdfState {
  const SelectPdfState._();

  const factory SelectPdfState.idle() = _$SelectPdfIdleState;

  const factory SelectPdfState.processing({@Default(0.0) double loadingStatus}) = _$SelectPdfProcessingState;

  const factory SelectPdfState.success({required List<FormData> selectedFiles}) = _$SelectPdfSuccessState;

  const factory SelectPdfState.error({
    @Default('Произошла не извеcтная ошибка') String? errorMsg,
  }) = _$SelectPdfErrorState;
}

typedef Emit = Emitter<SelectPdfState>;

final class SelectPdf extends Bloc<SelectPdfEvent, SelectPdfState> {
  SelectPdf({required ISelectPdfRepository selectPdfRepository})
      : _selectPdfRepository = selectPdfRepository,
        super(const SelectPdfState.idle()) {
    on((SelectPdfEvent event, Emit emit) {
      event.map(
        pickMultipleFiles: (event) => _selectPdf(event, emit),
        dropMultiplePdfFiles: (event) => _selectMultiplePdf(event, emit),
        updateLoadingStatus: (event) => _updateLoadingStatus(event, emit),
      );
    });

    _loadingStatusController = _selectPdfRepository.loadingStatus.listen((loadingPercent) {
      add(SelectPdfEvent.updateLoadingStatus(percent: loadingPercent));
    });
  }

  final ISelectPdfRepository _selectPdfRepository;
  StreamSubscription<double>? _loadingStatusController;

  Future<void> _updateLoadingStatus(_$UpdateLoadingStatusEvent event, Emit emit) async {
    state.mapOrNull(processing: (state) {
      final currentStatus = state.loadingStatus + event.percent;

      emit(event.processing(loadingStatus: currentStatus));

      if (currentStatus >= 100.0) {
        final files = _selectPdfRepository.getResultOfLoadingFiles();

        emit(event.success(selectedFiles: files));
      }
    });
  }

  Future<void> _selectPdf(_$PickMultipleFilesEvent event, Emit emit) async {
    try {
      emit(event.processing());

      await _selectPdfRepository.pickMultiplePdf();
    } on Object catch (error, stackTrace) {
      emit(event.error(errorMsg: 'Ошибка загрузки файла'));
    }
  }

  Future<void> _selectMultiplePdf(_$DropMultiplePdfFilesEvent event, Emit emit) async {
    try {
      emit(event.processing());

      await _selectPdfRepository.dropMultiplePdf(viewId: event.viewId);
    } on Object catch (error, stackTrace) {
      emit(event.error(errorMsg: 'Ошибка загрузки файла'));
    }
  }

  @override
  Future<void> close() {
    _loadingStatusController?.cancel();

    return super.close();
  }
}

mixin _IdleEmitter on SelectPdfEvent {
  SelectPdfState idle() => const SelectPdfState.idle();
}

mixin _ProcessingEmitter on SelectPdfEvent {
  SelectPdfState processing({double? loadingStatus}) {
    return SelectPdfState.processing(loadingStatus: loadingStatus ?? 0.0);
  }
}

mixin _SuccessEmitter on SelectPdfEvent {
  SelectPdfState success({required final List<FormData> selectedFiles}) {
    return SelectPdfState.success(selectedFiles: selectedFiles);
  }
}

mixin _ErrorEmitter on SelectPdfEvent {
  SelectPdfState error({String? errorMsg}) {
    return SelectPdfState.error(errorMsg: errorMsg);
  }
}
