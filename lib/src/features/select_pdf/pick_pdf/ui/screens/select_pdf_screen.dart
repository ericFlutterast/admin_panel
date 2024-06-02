import 'package:admin_panel_for_library/src/features/common/widgets/default_title.dart';
import 'package:admin_panel_for_library/src/features/everything_books/domain_bloc/blocs/all_books_bloc.dart';
import 'package:admin_panel_for_library/src/features/select_pdf/pick_pdf/domain_bloc/blocs/select_pdf.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dropzone_platform_interface/flutter_dropzone_platform_interface.dart';

class SelectPdfScreen extends StatelessWidget {
  const SelectPdfScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SelectPdf, SelectPdfState>(
        listener: (context, state) {
          state.mapOrNull(idle: (_) {
            context.read<AllBooks>().add(const AllBooksEvents.fetchBooks());
          });
        },
        child: BlocBuilder<SelectPdf, SelectPdfState>(
          builder: (context, state) {
            return state.maybeMap(
              orElse: () {
                return SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Center(child: DefaultTitle(title: 'Загрузить файл в библиотеку')),
                      const SizedBox(height: 25),
                      const _AddFileField(),
                      const SizedBox(height: 20),
                      const _PickFileButton(),
                      const SizedBox(height: 40),
                      BlocBuilder<SelectPdf, SelectPdfState>(builder: (context, state) {
                        return state.maybeMap(success: (state) {
                          return _UploadFileButton(
                            isDisable: false,
                            files: state.selectedFiles,
                          );
                        }, orElse: () {
                          return const _UploadFileButton(isDisable: true);
                        });
                      }),
                    ],
                  ),
                );
              },
              processing: (state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.3,
                    ),
                    Center(
                      child: Text(
                        'Загрузка... ${state.loadingStatus.toStringAsFixed(0)}%',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.8),
                        ),
                      ),
                    ),
                    if (state.loadingStatus == 0.0)
                      const Center(child: CircularProgressIndicator())
                    else
                      SizedBox(
                        height: 8,
                        child: LinearProgressIndicator(
                          borderRadius: const BorderRadius.all(Radius.circular(50)),
                          color: Colors.green,
                          value: state.loadingStatus / 100,
                        ),
                      ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class _AddFileField extends StatefulWidget {
  const _AddFileField();

  @override
  State<_AddFileField> createState() => _AddFileFieldState();
}

class _AddFileFieldState extends State<_AddFileField> {
  bool _onHover = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
        border: Border.all(
          color: _onHover ? Colors.black : Colors.black.withOpacity(0.4),
          width: _onHover ? 3 : 2,
          style: BorderStyle.solid,
        ),
      ),
      child: Stack(
        children: [
          FlutterDropzonePlatform.instance.buildView(
            {},
            {},
            (viewId) {
              FlutterDropzonePlatform.instance.onHover(viewId: viewId).listen((_) {
                setState(() => _onHover = true);
              });
              FlutterDropzonePlatform.instance.onLeave(viewId: viewId).listen((_) {
                setState(() => _onHover = false);
              });
              FlutterDropzonePlatform.instance.onDrop(viewId: viewId).listen((_) {
                setState(() => _onHover = false);
                context.read<SelectPdf>().add(SelectPdfEvent.dropMultiplePdfFiles(viewId: viewId));
              });
            },
          ),
          Positioned(
            top: 16,
            left: 16,
            child: BlocBuilder<SelectPdf, SelectPdfState>(
              builder: (context, state) {
                return state.maybeMap(
                  success: (state) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: state.selectedFiles
                          .map((file) => _DisplayDileItem(title: file.fields.first.value))
                          .toList(),
                    );
                  },
                  orElse: () {
                    return Row(
                      children: [
                        Text(
                          'Добавить файл или несколько файлов',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.8),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Icon(
                          Icons.file_copy,
                          color: Colors.black.withOpacity(0.8),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _DisplayDileItem extends StatelessWidget {
  const _DisplayDileItem({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.file_download_done,
          color: Colors.green,
        ),
        const SizedBox(width: 15),
        Text(title),
      ],
    );
  }
}

class _PickFileButton extends StatelessWidget {
  const _PickFileButton();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.read<SelectPdf>().add(const SelectPdfEvent.pickMultipleFiles());
      },
      child: Text(
        'Добавить файлы',
        style: TextStyle(
          fontSize: 15,
          color: Colors.black.withOpacity(0.8),
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}

class _UploadFileButton extends StatelessWidget {
  const _UploadFileButton({
    required this.isDisable,
    this.files,
  });

  final bool isDisable;
  final List<FormData>? files;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isDisable
          ? null
          : () {
              assert(files != null);
              context.read<SelectPdf>().add(SelectPdfEvent.upload(files: files!));
            },
      child: Text(
        'Загрузить файлы в библиотеку',
        style: TextStyle(
          fontSize: 15,
          color: isDisable ? Colors.black.withOpacity(0.3) : Colors.black.withOpacity(0.8),
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}
