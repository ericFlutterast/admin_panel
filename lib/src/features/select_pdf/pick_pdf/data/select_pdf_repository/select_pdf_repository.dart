import 'dart:async';
import 'dart:collection';

import 'package:admin_panel_for_library/src/common/file_picker/app_file_picker.dart';
import 'package:admin_panel_for_library/src/features/select_pdf/pick_pdf/data/dto/file_fragment_dto.dart';
import 'package:admin_panel_for_library/src/features/select_pdf/pick_pdf/data/select_pdf_repository_interface/select_pdf_repository_interface.dart';
import 'package:dio/dio.dart';

final class SelectPdfRepository implements ISelectPdfRepository {
  SelectPdfRepository({required this.filePicker}) {
    _loadingStatusController = StreamController<double>();
    _files = HashMap();

    filePicker.fileData.listen((FileFragmentDto fileFragment) {
      _loadingStatusController.add(fileFragment.loadingPercent);

      if (_files.containsKey(fileFragment.fileName)) {
        final currentBytes = _files[fileFragment.fileName]!;

        _files[fileFragment.fileName] = [...currentBytes, ...fileFragment.fileFragmentBytes];
      } else {
        _files[fileFragment.fileName] = fileFragment.fileFragmentBytes;
      }
    });
  }

  final AppFilePicker filePicker;
  late final HashMap<String, List<int>> _files;
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
            'fileName': entry.key,
            'file': MultipartFile.fromBytes(entry.value),
          },
        ),
    ];
  }
}
