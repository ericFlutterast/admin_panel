import 'package:admin_panel_for_library/src/features/everything_books/data/everything_books_repo_interface/everything_books_repo.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_books_bloc.freezed.dart';

@freezed
sealed class AllBooksEvents with _$AllBooksEvents {
  const AllBooksEvents._();

  @With<_LoadingEmitter>()
  @With<_SuccessesEmitter>()
  @With<_ErrorEmitter>()
  @With<_EmptyEmitter>()
  const factory AllBooksEvents.fetchBooks() = _$ALlBooksfetchBooksEvent;
}

@freezed
sealed class AllBooksState with _$AllBooksState {
  const AllBooksState._();

  const factory AllBooksState.loading() = _$AllBooksLoadingState;

  const factory AllBooksState.successful() = _$AllBooksSuccessfulState;

  const factory AllBooksState.empty() = _$AllBooksEmptyState;

  const factory AllBooksState.error({
    @Default('Произошла не извеcтная ошибка') String errorMsg,
  }) = _$AllBooksErrofulState;
}

typedef Emit = Emitter<AllBooksState>;

final class AllBooks extends Bloc<AllBooksEvents, AllBooksState> {
  AllBooks({
    required IEverythingBooksRepository everythingBooksRepo,
  })  : _everythingBooksRepo = everythingBooksRepo,
        super(const AllBooksState.loading()) {
    on<AllBooksEvents>((AllBooksEvents event, Emit emit) {
      event.map(fetchBooks: (event) => _fetchAllBooks(event, emit));
    });
  }

  final IEverythingBooksRepository _everythingBooksRepo;

  Future<void> _fetchAllBooks(_$ALlBooksfetchBooksEvent event, Emit emit) async {
    try {
      emit(event.loading());

      final result = await _everythingBooksRepo.fetchAllBooks();

      emit(event.success());
    } on DioException catch (error, StackTrace) {
      //emit error 'error of network'
    } catch (error, stackTrace) {
      emit(event.error(errorMsg: 'Проблема подключения сети'));
      //TODO: Логи в сентри
    }
  }
}

//миксины
mixin _LoadingEmitter on AllBooksEvents {
  AllBooksState loading() => const AllBooksState.loading();
}

mixin _SuccessesEmitter on AllBooksEvents {
  AllBooksState success() => const AllBooksState.successful();
}

mixin _ErrorEmitter on AllBooksEvents {
  AllBooksState error({required final String errorMsg}) => AllBooksState.error(errorMsg: errorMsg);
}

mixin _EmptyEmitter on AllBooksEvents {
  AllBooksState empty() => const AllBooksState.empty();
}
