import 'package:admin_panel_for_library/src/features/common/data/dto/book_dto/book_dto.dart';

abstract interface class IEverythingBooksDataSource {
  Future<List<BookDto>> fetchAllBooks();

  Future<void> deleteBook({required final String bookId});
}
