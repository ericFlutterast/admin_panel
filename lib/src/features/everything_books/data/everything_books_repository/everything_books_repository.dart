import 'package:admin_panel_for_library/src/common/network_client/network_client.dart';
import 'package:admin_panel_for_library/src/features/everything_books/data/everything_books_repo_interface/everything_books_repo.dart';

final class EverythingBooksRepository implements IEverythingBooksRepository {
  const EverythingBooksRepository({
    required NetworkClient networkClient,
  }) : _networkClient = networkClient;

  final NetworkClient _networkClient;

  @override
  Future<void> deleteBook({required String bookId}) {
    // TODO: implement deleteBook
    throw UnimplementedError();
  }

  @override
  Future fetchAllBooks() {
    // TODO: implement fetchAllBooks
    throw UnimplementedError();
  }
}
