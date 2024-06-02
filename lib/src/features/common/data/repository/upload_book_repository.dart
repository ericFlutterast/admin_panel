import 'package:admin_panel_for_library/src/common/network_client/network_client.dart';
import 'package:admin_panel_for_library/src/features/common/data/repository_interface/upload_book_repository_interface.dart';
import 'package:dio/dio.dart';

final class UploadBookRepository implements IUploadBookRepository {
  const UploadBookRepository({
    required NetworkClient networkClient,
  }) : _networkClient = networkClient;

  final NetworkClient _networkClient;

  @override
  Future<void> uploadBook({required final List<FormData> files}) async {
    await Future.wait(
      [
        for (final file in files)
          _networkClient.request(
            type: Post(
              path: '/books',
              data: file,
            ),
          ),
      ],
    );
  }
}
