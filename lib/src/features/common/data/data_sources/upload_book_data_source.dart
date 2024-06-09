import 'package:admin_panel_for_library/src/common/network_client/network_client.dart';
import 'package:admin_panel_for_library/src/features/common/data/data_sources_interfaces/upload_book_data_source_interface.dart';
import 'package:dio/dio.dart';

final class UploadBookDataSource implements IUploadBookDataSource {
  const UploadBookDataSource({
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
