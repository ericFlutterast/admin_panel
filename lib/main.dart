import 'dart:async';

import 'package:admin_panel_for_library/src/features/app/app.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';

void main() {
  Bloc.transformer = bloc_concurrency.sequential<Object?>();

  runZonedGuarded(
    () {
      runApp(const App());
    },
    (error, stack) {
      //TODO: Логирование ошибок
      print('uncaught error $error');
    },
  );
}

//Нужно убрать зависимость от пакет dropZone,
// можне написать кастомный виджет на:
//flutter_dropzone_platform_interface
// flutter_dropzone_web
//в теории интрерфейс можно тоже определить свмостоятельно,
// оставив только необходимость в платформенной реализации
class FilePickExample extends StatefulWidget {
  const FilePickExample({super.key});

  @override
  State<FilePickExample> createState() => _FilePickExampleState();
}

class _FilePickExampleState extends State<FilePickExample> {
  bool loadingStatus = false;
  bool _isHover = false;
  DropzoneViewController? dropzoneViewController;

  //pick file
  Future<void> uploadingFile() async {
    // FormData formData = FormData.fromMap(
    //   {
    //     'file': MultipartFile.fromBytes(
    //       result!.files.first.bytes!,
    //       filename: result.files.first.name,
    //     )
    //   },
    // );

    // print(formData.files.first.value);
  }

  Future<void> processingFile(dynamic file) async {
    if (file != null && dropzoneViewController != null) {
      int fileSize = await dropzoneViewController!.getFileSize(file);

      print('file size $fileSize');

      dropzoneViewController!.getFileStream(file).listen((List<int> event) {
        final thisEventByteSum = event.length;

        print(thisEventByteSum);
        print(fileSize -= thisEventByteSum);
      });

      // final fileBytes = await dropzoneViewController!.getFileData(file);
      // print(fileBytes);

      print(dropzoneViewController!.getFileMIME(file));

      print(dropzoneViewController!.createFileUrl(file));
      print(dropzoneViewController!.getFilename(file));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 550,
                height: 350,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: _isHover ? Border.all(color: Colors.red, width: 10) : null,
                ),
                child: DropzoneView(
                  cursor: CursorType.auto,
                  onCreated: (controller) {
                    if (dropzoneViewController == null) {
                      setState(() {
                        dropzoneViewController = dropzoneViewController;
                      });
                    }
                  },
                  onLoaded: () {
                    print('loaded');
                  },
                  onError: (String? errorMessage) {},
                  onHover: () => setState(() {
                    _isHover = true;
                  }),
                  onDrop: (file) {
                    setState(() {
                      _isHover = false;
                    });
                    processingFile(file);
                  },
                  //загрузка нескольких файлов
                  onDropMultiple: (List<dynamic>? files) async {
                    print(files?.length);

                    print(await dropzoneViewController!.getFileSize(files!.first));
                  },
                  onLeave: () => setState(() {
                    _isHover = false;
                  }),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 300,
                child: LinearProgressIndicator(
                  value: loadingStatus ? null : 0.0,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => uploadingFile(),
                child: const Text('Upload file'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
