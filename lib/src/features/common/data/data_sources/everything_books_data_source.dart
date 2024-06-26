import 'package:admin_panel_for_library/src/common/network_client/network_client.dart';
import 'package:admin_panel_for_library/src/features/common/data/data_sources_interfaces/everything_books_data_source_interface.dart';
import 'package:admin_panel_for_library/src/features/common/data/dto/book_dto/book_dto.dart';

final class EverythingBooksDataSource implements IEverythingBooksDataSource {
  const EverythingBooksDataSource({
    required NetworkClient networkClient,
  }) : _networkClient = networkClient;

  final NetworkClient _networkClient;

  @override
  Future<void> deleteBook({required String bookId}) async {
    await _networkClient.request(type: Delete(path: '/books/$bookId'));
  }

  @override
  Future<List<BookDto>> fetchAllBooks() async {
    final response = await _networkClient.request(type: const Get(path: '/books'));

    if (response == null) return [];

    return (response.data['books'] as List).map((json) => BookDto.fromJson(json)).toList();
  }
}
