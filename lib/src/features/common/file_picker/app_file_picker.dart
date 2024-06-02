import 'dart:async';

import 'package:admin_panel_for_library/src/features/common/data/dto/file_fragment_dto.dart';
import 'package:file_picker/_internal/file_picker_web.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_dropzone_platform_interface/flutter_dropzone_platform_interface.dart';

final class AppFilePicker {
  AppFilePicker() {
    _streamController = StreamController<FileFragmentDto>();
  }

  late final StreamController<FileFragmentDto> _streamController;

  Stream<FileFragmentDto> get fileData => _streamController.stream;

  Future<void> pickFile() async {
    final pickFileResult = await FilePickerWeb.platform.pickFiles(
      allowMultiple: true,
      withReadStream: true,
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (pickFileResult != null) {
      final int filesSize = _getFilesSizeFromDirectory(pickFileResult.files);

      for (final PlatformFile file in pickFileResult.files) {
        file.readStream!.listen((bytes) {
          final fileDataFragment = FileFragmentDto(
            fileFragmentBytes: bytes,
            fileName: file.name,
            loadingPercent: bytes.length * 100 / filesSize,
          );

          _streamController.add(fileDataFragment);
        });
      }
    }
  }

  Future<dynamic> fileDropPick({required int viewId}) async {
    FlutterDropzonePlatform.instance.onDropMultiple(viewId: viewId).listen(
      (DropzoneDropMultipleEvent event) async {
        final List<dynamic>? files = event.value;

        if (files != null) {
          final filesSize = await _getFilesSizeFromDragAndDrop(files: files, viewId: viewId);

          for (final file in files) {
            final fileName = await FlutterDropzonePlatform.instance.getFilename(file, viewId: viewId);

            FlutterDropzonePlatform.instance.getFileStream(file, viewId: viewId).listen((bytes) {
              final fileDataFragment = FileFragmentDto(
                fileFragmentBytes: bytes,
                fileName: fileName,
                loadingPercent: bytes.length * 100 / filesSize,
              );

              _streamController.add(fileDataFragment);
            });
          }
        }
      },
    );
  }

  int _getFilesSizeFromDirectory(List<PlatformFile> files) {
    int sum = 0;

    for (final PlatformFile file in files) {
      sum += file.size;
    }

    return sum;
  }

  Future<int> _getFilesSizeFromDragAndDrop({
    required List<dynamic> files,
    required int viewId,
  }) async {
    int sum = 0;

    for (final file in files) {
      sum += await FlutterDropzonePlatform.instance.getFileSize(file, viewId: viewId);
    }

    return sum;
  }
}
