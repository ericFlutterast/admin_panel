import 'package:dio/dio.dart';

abstract interface class ISelectPdfRepository {
  Future<FormData> pickPdf();
  Future<List<FormData>> selectMultiplePdf();
}
