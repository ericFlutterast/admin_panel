import 'package:admin_panel_for_library/src/features/common/widgets/default_title.dart';
import 'package:flutter/material.dart';

class SelectSubjectsScreen extends StatelessWidget {
  const SelectSubjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Center(child: DefaultTitle(title: 'Выбрать предмет')),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
