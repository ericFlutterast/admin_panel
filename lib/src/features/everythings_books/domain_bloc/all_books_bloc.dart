import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_books_bloc.freezed.dart';

@freezed
sealed class AllBooksEvents with _$AllBooksEvents {
  const AllBooksEvents._();

  const factory AllBooksEvents.fetchBooks() = _$ALlBooksfetchBooksEvent;
}

@freezed
sealed class AllBooksState with _$AllBooksState {
  const AllBooksState._();

  const factory AllBooksState.loading() = _$AllBooksLoadingState;

  const factory AllBooksState.successful() = _$AllBooksSuccessfulState;

  const factory AllBooksState.error({
    @Default('Произошла не извеcтная ошибка') String errorMsg,
  }) = _$AllBooksErrofulState;
}
