import 'package:admin_panel_for_library/src/features/select_pdf/pick_pdf/domain_bloc/blocs/select_pdf.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dropzone_platform_interface/flutter_dropzone_platform_interface.dart';

class SelectPdfScreen extends StatelessWidget {
  const SelectPdfScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 400,
          width: 300,
          color: Colors.grey,
          child: FlutterDropzonePlatform.instance.buildView(
            {},
            {},
            (viewId) {
              context.read<SelectPdf>().add(SelectPdfEvent.dropMultiplePdfFiles(viewId: viewId));
            },
          ),
        ),
        ElevatedButton(
          onPressed: () {
            context.read<SelectPdf>().add(const SelectPdfEvent.pickMultipleFiles());
          },
          child: const Text(
            'pick file',
          ),
        ),
      ],
    );
  }
}
