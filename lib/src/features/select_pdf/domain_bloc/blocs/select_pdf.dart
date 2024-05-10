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
  @With<_SuccessEmitter>()
  @With<_ErrorEmitter>()
  const factory SelectPdfEvent.pickFile() = _$SelectPdfPickFileEvent;

  @With<_IdleEmitter>()
  @With<_ProcessingEmitter>()
  @With<_SuccessEmitter>()
  @With<_ErrorEmitter>()
  const factory SelectPdfEvent.selectMultiplePdf({required List<dynamic> files}) = _$SelectMultiplePdfEvent;
}

@freezed
sealed class SelectPdfState with _$SelectPdfState {
  const SelectPdfState._();

  const factory SelectPdfState.idle() = _$SelectPdfIdleState;

  const factory SelectPdfState.processing() = _$SelectPdfProcessingState;

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
    on((SelectPdfEvent event, Emit emit) {});
  }

  final ISelectPdfRepository _selectPdfRepository;

  Future<void> _selectPdf(_$SelectPdfPickFileEvent event, Emit emit) async {
    try {
      emit(event.processing());

      final result = await _selectPdfRepository.pickPdf();

      emit(event.success(selectedFiles: [result]));
    } on Object catch (error, stackTrace) {
      emit(event.error(errorMsg: 'Ошибка загрузки файла'));
    } finally {
      emit(event.idle());
    }
  }

  Future<void> _selectMultiplePdf(_$SelectMultiplePdfEvent event, Emit emit) async {
    try {
      emit(event.processing());

      final result = await _selectPdfRepository.selectMultiplePdf();

      emit(event.success(selectedFiles: result));
    } on Object catch (error, stackTrace) {
      emit(event.error(errorMsg: 'Ошибка загрузки файла'));
    } finally {
      emit(event.idle());
    }
  }
}

mixin _IdleEmitter on SelectPdfEvent {
  SelectPdfState idle() => const SelectPdfState.idle();
}

mixin _ProcessingEmitter on SelectPdfEvent {
  SelectPdfState processing() => const SelectPdfState.processing();
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
