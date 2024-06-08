import 'package:dio/dio.dart';

abstract interface class IUploadBookDataSource {
  Future<void> uploadBook({required final List<FormData> files});
}
