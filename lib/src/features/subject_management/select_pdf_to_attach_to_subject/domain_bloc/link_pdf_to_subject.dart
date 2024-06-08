import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'link_pdf_to_subject.freezed.dart';

@freezed
sealed class LinkPdfToSubjectEvent with _$LinkPdfToSubjectEvent {
  const LinkPdfToSubjectEvent._();

  const factory LinkPdfToSubjectEvent.fetchAllPdf() = _$FetchLinkPdfToSubjectEvent;
}

@freezed
sealed class LinkPdfToSubjectState with _$LinkPdfToSubjectState {
  const LinkPdfToSubjectState._();

  const factory LinkPdfToSubjectState.idle() = _$IdleLinkPdfToSubjectState;

  const factory LinkPdfToSubjectState.loading() = _$LoadingLinkPdfToSubjectState;

  const factory LinkPdfToSubjectState.success() = _$SuccessLinkPdfToSubjectState;

  const factory LinkPdfToSubjectState.error({
    @Default('Неизвестная ошибка') String? errorMsg,
  }) = _$ErrorLinkPdfToSubjectState;
}

typedef Emit = Emitter<LinkPdfToSubjectState>;

final class LinkPdfToSubjectBloc extends Bloc<LinkPdfToSubjectEvent, LinkPdfToSubjectState> {
  LinkPdfToSubjectBloc() : super(const LinkPdfToSubjectState.idle()) {
    on<LinkPdfToSubjectEvent>((event, emit) {});
  }
}

//mixins
mixin _IdleStateEmitter on LinkPdfToSubjectEvent {
  LinkPdfToSubjectState idle() {
    return const LinkPdfToSubjectState.idle();
  }
}

mixin _LoadingStateEmitter on LinkPdfToSubjectEvent {
  LinkPdfToSubjectState loading() {
    return const LinkPdfToSubjectState.loading();
  }
}

mixin _SuccessStateEmitter on LinkPdfToSubjectEvent {
  LinkPdfToSubjectState success() {
    return const LinkPdfToSubjectState.success();
  }
}

mixin _ErrorStateEmitter on LinkPdfToSubjectEvent {
  LinkPdfToSubjectState error({String? errorMsg}) {
    return LinkPdfToSubjectState.error(errorMsg: errorMsg);
  }
}
