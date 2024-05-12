import 'package:admin_panel_for_library/src/features/select_pdf/upload_pdf/data/upload_pdf_repository/upload_book_repository_interface.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_pdf.freezed.dart';

@freezed
sealed class UploadPdfEvent with _$UploadPdfEvent {
  const UploadPdfEvent._();

  @With<_IdleEmitter>()
  @With<_UploadingEmitter>()
  @With<_SuccessEmitter>()
  @With<_ErrorEmitter>()
  const factory UploadPdfEvent.uploadFile({required FormData file}) = _$UploadPdfUploadEvent;
}

@freezed
sealed class UploadPdfState with _$UploadPdfState {
  const UploadPdfState._();

  const factory UploadPdfState.idle() = _$UploadPdfIdleState;

  const factory UploadPdfState.uploading() = _$UploadPdfUploadingState;

  const factory UploadPdfState.success() = _$UploadPdfSuccessState;

  const factory UploadPdfState.error({@Default('Произошла ошибка') String message}) = _$UploadPdfErrorState;
}

typedef Emit = Emitter<UploadPdfState>;

final class UploadPdf extends Bloc<UploadPdfEvent, UploadPdfState> {
  UploadPdf({
    required IUploadBookRepository uploadBookRepository,
  })  : _uploadBookRepository = uploadBookRepository,
        super(const UploadPdfState.idle()) {
    on<UploadPdfEvent>((event, emit) {
      event.map(uploadFile: (event) => _uploadPdf(event, emit));
    });
  }

  final IUploadBookRepository _uploadBookRepository;

  Future<void> _uploadPdf(_$UploadPdfUploadEvent event, Emit emit) async {
    try {
      emit(event.uploading());

      await _uploadBookRepository.uploadBook(file: event.file);

      emit(event.success());
    } on DioException catch (error, stackTrace) {
      emit(event.error(errorMsg: 'Не удалось отправить файл'));
    } on Object catch (error, stackTrace) {
      emit(event.error(errorMsg: 'Произошла не известная ошибка'));
    } finally {
      emit(event.idle());
    }
  }
}

mixin _IdleEmitter on UploadPdfEvent {
  UploadPdfState idle() => const UploadPdfState.idle();
}

mixin _UploadingEmitter on UploadPdfEvent {
  UploadPdfState uploading() => const UploadPdfState.uploading();
}

mixin _SuccessEmitter on UploadPdfEvent {
  UploadPdfState success() => const UploadPdfState.success();
}

mixin _ErrorEmitter on UploadPdfEvent {
  UploadPdfState error({String? errorMsg}) => UploadPdfState.error(message: errorMsg ?? 'Произошла ошибка');
}
