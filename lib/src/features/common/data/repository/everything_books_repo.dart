import 'package:admin_panel_for_library/src/features/everything_books/domain_bloc/models/file_item_model.dart';

abstract interface class IEverythingBooksRepository {
  Future<List<FileItemModel>> fetchAllBooks();
  Future<void> deleteBook({required final String bookId});
}
