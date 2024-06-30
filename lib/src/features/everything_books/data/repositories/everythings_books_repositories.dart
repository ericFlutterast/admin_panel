import 'package:admin_panel_for_library/src/features/common/data/data_sources_interfaces/everything_books_data_source_interface.dart';
import 'package:admin_panel_for_library/src/features/common/data/dto/book_dto/book_dto.dart';

abstract interface class IEverythingBooksRepositories {
  Future<List<BookDto>> fetchAllBooks();

  Future<void> deleteBook({required final String bookId});
}

final class EverythingBooksRepositories implements IEverythingBooksRepositories {
  EverythingBooksRepositories({
    required IEverythingBooksDataSource everythingBooksDataSource,
  }) : _everythingBooksDataSource = everythingBooksDataSource;

  final IEverythingBooksDataSource _everythingBooksDataSource;

  @override
  Future<List<BookDto>> fetchAllBooks() async {
    return await _everythingBooksDataSource.fetchAllBooks();
  }

  @override
  Future<void> deleteBook({required final String bookId}) async {
    return await _everythingBooksDataSource.deleteBook(bookId: bookId);
  }
}
