import 'package:admin_panel_for_library/src/common/network_client/network_client.dart';
import 'package:admin_panel_for_library/src/features/subject_management/data/data_sources/subject_data_source_interface.dart';

final class LinkBookService implements IManagementBookLink {
  LinkBookService({required NetworkClient networkClient}) : _networkClient = networkClient;

  final NetworkClient _networkClient;

  @override
  Future<void> linkBook({required final int subjectId, required final String bookId}) async {
    await _networkClient.request(
      type: Put(path: '/subjects/$subjectId/link/book', data: {
        'bookId': bookId,
      }),
    );
  }

  @override
  Future<void> unlinkBook({required int bookId}) async {
    await _networkClient.request(type: Delete(path: '/subjects/$bookId/link/book'));
  }
}
