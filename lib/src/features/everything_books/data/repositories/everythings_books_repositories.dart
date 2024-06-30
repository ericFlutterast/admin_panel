import 'package:admin_panel_for_library/src/features/common/data/data_sources_interfaces/everything_books_data_source_interface.dart';
import 'package:admin_panel_for_library/src/features/common/data/dto/book_dto/book_dto.dart';
import 'package:admin_panel_for_library/src/features/everything_books/data/database/daos/everything_book_dao.dart';
import 'package:drift/drift.dart';

abstract interface class IEverythingBooksRepositories {
  Future<List<BookDto>> fetchAllBooks();

  Future<void> deleteBook({required final String bookId});
}

final class EverythingBooksRepositories implements IEverythingBooksRepositories {
  EverythingBooksRepositories({
    required IEverythingBooksDataSource everythingBooksDataSource,
    required EverythingBookDao everythingBookDao,
  })  : _everythingBooksDataSource = everythingBooksDataSource,
        _everythingBookDao = everythingBookDao;

  final IEverythingBooksDataSource _everythingBooksDataSource;
  final EverythingBookDao _everythingBookDao;

  @override
  Future<List<BookDto>> fetchAllBooks() async {
    try {
      final booksFromDatabase = await _everythingBookDao.fetchAllBooks();

      if (booksFromDatabase.isEmpty) {
        final booksFromNetwork = await _everythingBooksDataSource.fetchAllBooks();
        await _everythingBookDao.addBooks(booksFromNetwork);
        return booksFromNetwork;
      }

      return booksFromDatabase;
    } on DriftWrappedException catch (error) {
      print('Произошла ошибка базы данных: $error');
      rethrow;
    }
  }

  @override
  Future<void> deleteBook({required final String bookId}) async {
    return await _everythingBooksDataSource.deleteBook(bookId: bookId);
  }
}
