import 'package:dio/dio.dart';

abstract interface class IUploadBookRepository {
  Future<void> uploadBook({required final List<FormData> files});
}
