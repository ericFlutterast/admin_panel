import 'package:admin_panel_for_library/src/features/common/data/dto/book_dto/book_dto.dart';
import 'package:admin_panel_for_library/src/features/everything_books/data/repositories/everythings_books_repositories.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
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
  const factory AllBooksEvents.fetchBooks() = _$AllBooksfetchBooksEvent;

  @With<_SuccessesEmitter>()
  @With<_ErrorEmitter>()
  const factory AllBooksEvents.deleteBook({required String bookId}) = _$DeletBookEvent;
}

@freezed
sealed class AllBooksState with _$AllBooksState {
  const AllBooksState._();

  List<BookDto>? get currentLibrary => mapOrNull(
        successful: (state) => state.items,
      );

  const factory AllBooksState.loading() = _$AllBooksLoadingState;

  const factory AllBooksState.successful({required final List<BookDto> items}) = _$AllBooksSuccessfulState;

  const factory AllBooksState.empty() = _$AllBooksEmptyState;

  const factory AllBooksState.error({
    @Default('Произошла не извеcтная ошибка') String errorMsg,
  }) = _$AllBooksErrofulState;
}

typedef Emit = Emitter<AllBooksState>;

final class AllBooks extends Bloc<AllBooksEvents, AllBooksState> {
  AllBooks({required IEverythingBooksRepositories everythingBooksRepo})
      : _everythingBooksRepo = everythingBooksRepo,
        super(const AllBooksState.empty()) {
    on<AllBooksEvents>((event, emit) async {
      await event.map(
        fetchBooks: (event) => _fetchAllBooks(event, emit),
        deleteBook: (event) => _deleteBook(event, emit),
      );
    }, transformer: bloc_concurrency.droppable());
  }

  final IEverythingBooksRepositories _everythingBooksRepo;

  Future<void> _fetchAllBooks(_$AllBooksfetchBooksEvent event, Emit emit) async {
    try {
      emit(event.loading());
      final result = await _everythingBooksRepo.fetchAllBooks();
      emit(event.success(items: result));
    } on DioException catch (error, _) {
      emit(event.error(errorMsg: 'Проблема подключения к сети'));
    } on Object catch (error, _) {
      emit(event.error(errorMsg: 'Неизвестная ошибка'));
    }
  }

  Future<void> _deleteBook(_$DeletBookEvent event, Emit emit) async {
    try {
      await _everythingBooksRepo.deleteBook(bookId: event.bookId);
      if (state.currentLibrary != null) {
        final updateList = [...state.currentLibrary!];
        final removedItem = updateList.firstWhere((item) => item.guid == event.bookId);
        updateList.remove(removedItem);
        emit(event.success(items: updateList));
      }
    } on DioException catch (error, _) {
      print(error.response?.data);
      final items = state.currentLibrary ?? [];
      emit(event.error(errorMsg: 'Проблема подключения к сети'));
      emit(event.success(items: items));
    } on Object catch (error, _) {
      final items = state.currentLibrary ?? [];
      emit(event.error(errorMsg: 'Не удалось удалить объект'));
      emit(event.success(items: items));
    }
  }
}

//миксины
mixin _LoadingEmitter on AllBooksEvents {
  AllBooksState loading() => const AllBooksState.loading();
}

mixin _SuccessesEmitter on AllBooksEvents {
  AllBooksState success({required final List<BookDto> items}) => AllBooksState.successful(items: items);
}

mixin _ErrorEmitter on AllBooksEvents {
  AllBooksState error({required final String errorMsg}) => AllBooksState.error(errorMsg: errorMsg);
}

mixin _EmptyEmitter on AllBooksEvents {
  AllBooksState empty() => const AllBooksState.empty();
}
