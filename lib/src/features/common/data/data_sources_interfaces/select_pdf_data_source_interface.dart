import 'package:dio/dio.dart';

abstract interface class ISelectPdfDataSource {
  Stream<double> get loadingStatus;

  List<FormData> getResultOfLoadingFiles();

  Future<void> pickMultiplePdf();

  Future<void> dropMultiplePdf({required final int viewId});
}
