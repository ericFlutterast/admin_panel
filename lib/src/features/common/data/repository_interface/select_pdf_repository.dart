import 'dart:async';
import 'dart:collection';
import 'dart:typed_data';

import 'package:admin_panel_for_library/src/features/common/data/dto/file_fragment_dto.dart';
import 'package:admin_panel_for_library/src/features/common/data/repository/select_pdf_repository_interface.dart';
import 'package:admin_panel_for_library/src/features/common/file_picker/app_file_picker.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:http_parser/http_parser.dart';

final class SelectPdfRepository implements ISelectPdfRepository {
  SelectPdfRepository({required this.filePicker}) {
    _loadingStatusController = StreamController<double>();
    _files = HashMap();

    filePicker.fileData.listen((FileFragmentDto fileFragment) {
      try {
        _loadingStatusController.add(fileFragment.loadingPercent);

        if (_files.containsKey(fileFragment.fileName)) {
          _files[fileFragment.fileName]!.addAll(fileFragment.fileFragmentBytes);
        } else {
          _files[fileFragment.fileName] = Uint8List.fromList(fileFragment.fileFragmentBytes);
        }
      } catch (e) {
        print(e);
      }
    });
  }

  final AppFilePicker filePicker;
  late final HashMap<String, Uint8List> _files;
  late final StreamController<double> _loadingStatusController;

  @override
  Stream<double> get loadingStatus => _loadingStatusController.stream;

  @override
  Future<void> pickMultiplePdf() async {
    return await filePicker.pickFile();
  }

  @override
  Future<void> dropMultiplePdf({required final int viewId}) async {
    return await filePicker.fileDropPick(viewId: viewId);
  }

  @override
  List<FormData> getResultOfLoadingFiles() {
    return [
      for (final entry in _files.entries)
        FormData.fromMap(
          {
            'file': MultipartFile.fromBytes(
              Uint8List.fromList(entry.value),
              filename: entry.key,
              contentType: MediaType('Application', 'pdf'),
            ),
            'displayName': entry.key,
          },
        ),
    ];
  }
}
