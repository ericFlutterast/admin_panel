import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_files.freezed.dart';

@freezed
sealed class SendFilesEvent with _$SendFilesEvent {
  const SendFilesEvent._();

  @With<_SendingEmitter>()
  @With<_SentEmitter>()
  @With<_ErrorEmitter>()
  const factory SendFilesEvent.send() = _$SendFilesSendEvent;
}

@freezed
sealed class SendFilesState with _$SendFilesState {
  const SendFilesState._();

  const factory SendFilesState.sending() = _$SelectFiltersSendingState;

  const factory SendFilesState.sent() = _$SelectFiltersSentState;

  const factory SendFilesState.error({
    @Default('Произошла не извеcтная ошибка') String? errorMsg,
  }) = _$SendFilesErrorState;
}

//миксины
mixin _SendingEmitter on SendFilesEvent {
  SendFilesState sending() => const SendFilesState.sending();
}

mixin _SentEmitter on SendFilesEvent {
  SendFilesState sent() => const SendFilesState.sent();
}

mixin _ErrorEmitter on SendFilesEvent {
  SendFilesState error() => const SendFilesState.error();
}
