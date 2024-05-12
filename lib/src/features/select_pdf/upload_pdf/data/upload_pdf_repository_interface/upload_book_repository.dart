import 'package:admin_panel_for_library/src/common/network_client/network_client.dart';
import 'package:admin_panel_for_library/src/features/select_pdf/upload_pdf/data/upload_pdf_repository/upload_book_repository_interface.dart';
import 'package:dio/dio.dart';

final class UploadBookRepository implements IUploadBookRepository {
  const UploadBookRepository({
    required NetworkClient networkClient,
  }) : _networkClient = networkClient;

  final NetworkClient _networkClient;

  @override
  Future<void> uploadBook({required final FormData file}) {
    // TODO: implement uploadBook
    throw UnimplementedError();
  }
}
