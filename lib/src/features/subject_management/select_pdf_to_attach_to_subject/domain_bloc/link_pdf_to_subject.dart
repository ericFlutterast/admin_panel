import 'package:admin_panel_for_library/src/features/common/data/dto/book_dto/book_dto.dart';
import 'package:admin_panel_for_library/src/features/subject_management/select_pdf_to_attach_to_subject/data/link_pdf_to_subject_repository/link_pdf_to_subject_repository_interface.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'link_pdf_to_subject.freezed.dart';

@freezed
sealed class LinkPdfToSubjectEvent with _$LinkPdfToSubjectEvent {
  const LinkPdfToSubjectEvent._();

  @With<_SuccessStateEmitter>()
  @With<_ErrorStateEmitter>()
  @With<_LoadingStateEmitter>()
  @With<_IdleStateEmitter>()
  const factory LinkPdfToSubjectEvent.fetchAllPdf() = _$FetchLinkPdfToSubjectEvent;

  @With<_ErrorStateEmitter>()
  const factory LinkPdfToSubjectEvent.linkPdf({required int subjectId, required String bookId}) =
      _$LinkPdfLinkPdfToSubjectEvent;

  @With<_ErrorStateEmitter>()
  const factory LinkPdfToSubjectEvent.unlink({required int subjectId, required String bookId}) =
      _$UnlinkPdfLinkPdfToSubjectEvent;
}

@freezed
sealed class LinkPdfToSubjectState with _$LinkPdfToSubjectState {
  const LinkPdfToSubjectState._();

  const factory LinkPdfToSubjectState.idle({
    required List<BookDto> books,
  }) = _$IdleLinkPdfToSubjectState;

  const factory LinkPdfToSubjectState.loading({
    required List<BookDto> books,
  }) = _$LoadingLinkPdfToSubjectState;

  const factory LinkPdfToSubjectState.success({
    required List<BookDto> books,
  }) = _$SuccessLinkPdfToSubjectState;

  const factory LinkPdfToSubjectState.error({
    required List<BookDto> books,
    @Default('Неизвестная ошибка') String? errorMsg,
  }) = _$ErrorLinkPdfToSubjectState;

  static const LinkPdfToSubjectState instance = LinkPdfToSubjectState.idle(books: []);
}

typedef Emit = Emitter<LinkPdfToSubjectState>;

final class LinkPdfToSubjectBloc extends Bloc<LinkPdfToSubjectEvent, LinkPdfToSubjectState> {
  LinkPdfToSubjectBloc({
    required ILinkPdfToSubjectRepository linkPdfToSubjectRepository,
  })  : _linkPdfToSubjectRepository = linkPdfToSubjectRepository,
        super(LinkPdfToSubjectState.instance) {
    on<LinkPdfToSubjectEvent>((event, emit) async {
      await event.map(
        fetchAllPdf: (event) => _fetchAllBooks(event, emit),
        linkPdf: (event) => _linkPdf(event, emit),
        unlink: (event) => _unlinkPdf(event, emit),
      );
    });
  }

  final ILinkPdfToSubjectRepository _linkPdfToSubjectRepository;

  Future<void> _fetchAllBooks(_$FetchLinkPdfToSubjectEvent event, Emit emit) async {
    try {
      emit(event.loading(state: state));

      final result = await _linkPdfToSubjectRepository.fetchAllBooks();

      emit(event.success(books: result));
    } on DioException catch (error, _) {
      emit(event.error(errorMsg: 'Ошибка сети', state: state));
    } on Object catch (error, _) {
      emit(event.error(errorMsg: 'Неопознанная ошибка', state: state));
    }
  }

  Future<void> _linkPdf(_$LinkPdfLinkPdfToSubjectEvent event, Emit emit) async {
    try {
      await _linkPdfToSubjectRepository.linkPdfToSubject(subjectId: event.subjectId, bookId: event.bookId);
    } on DioException catch (error, _) {
      emit(event.error(errorMsg: 'Ошибка сети', state: state));
    } on Object catch (error, _) {
      emit(event.error(errorMsg: 'Неопознанная ошибка', state: state));
    }
  }

  Future<void> _unlinkPdf(_$UnlinkPdfLinkPdfToSubjectEvent event, Emit emit) async {
    try {
      await _linkPdfToSubjectRepository.unlinkPdf(subjectId: event.subjectId, bookId: event.bookId);
    } on DioException catch (error, _) {
      emit(event.error(errorMsg: 'Ошибка сети', state: state));
    } on Object catch (error, _) {
      emit(event.error(errorMsg: 'Неопознанная ошибка', state: state));
    }
  }
}

//mixins
mixin _IdleStateEmitter on LinkPdfToSubjectEvent {
  LinkPdfToSubjectState idle({
    required List<BookDto> books,
  }) {
    return LinkPdfToSubjectState.idle(books: books);
  }
}

mixin _LoadingStateEmitter on LinkPdfToSubjectEvent {
  LinkPdfToSubjectState loading({
    required LinkPdfToSubjectState state,
  }) {
    return LinkPdfToSubjectState.loading(books: state.books);
  }
}

mixin _SuccessStateEmitter on LinkPdfToSubjectEvent {
  LinkPdfToSubjectState success({required final List<BookDto> books}) {
    return LinkPdfToSubjectState.success(books: books);
  }
}

mixin _ErrorStateEmitter on LinkPdfToSubjectEvent {
  LinkPdfToSubjectState error({
    required LinkPdfToSubjectState state,
    String? errorMsg,
  }) {
    return LinkPdfToSubjectState.error(
      errorMsg: errorMsg,
      books: state.books,
    );
  }
}
