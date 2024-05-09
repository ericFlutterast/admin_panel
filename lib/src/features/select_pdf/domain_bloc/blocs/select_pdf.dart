import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'select_pdf.freezed.dart';

@freezed
sealed class SelectPdfEvent with _$SelectPdfEvent {
  const SelectPdfEvent._();

  const factory SelectPdfEvent.pickFile() = _$SelectPdfPickFileEvent;

  const factory SelectPdfEvent.dragAndDropFiles({required List<dynamic> files}) =
      _$SelectPdfDragAndDropFilesEvent;
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
