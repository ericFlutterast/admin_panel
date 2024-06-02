import 'package:admin_panel_for_library/src/common/network_client/network_client.dart';
import 'package:admin_panel_for_library/src/features/common/data/repository/everything_books_repo.dart';
import 'package:admin_panel_for_library/src/features/everything_books/domain_bloc/models/file_item_model.dart';

final class EverythingBooksRepository implements IEverythingBooksRepository {
  const EverythingBooksRepository({
    required NetworkClient networkClient,
  }) : _networkClient = networkClient;

  final NetworkClient _networkClient;

  @override
  Future<void> deleteBook({required String bookId}) async {
    await _networkClient.request(type: Delete(path: '/books/$bookId'));
  }

  @override
  Future<List<FileItemModel>> fetchAllBooks() async {
    final response = await _networkClient.request(type: const Get(path: '/books'));

    if (response == null) return [];

    return (response.data['books'] as List).map((json) => FileItemModel.fromJson(json: json)).toList();
  }
}
