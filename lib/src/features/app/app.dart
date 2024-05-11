import 'package:admin_panel_for_library/src/common/di/dependencies_scope.dart';
import 'package:admin_panel_for_library/src/features/select_pdf/data/select_pdf_repository/select_pdf_repository.dart';
import 'package:admin_panel_for_library/src/features/select_pdf/domain_bloc/blocs/select_pdf.dart';
import 'package:admin_panel_for_library/src/features/select_pdf/ui/screens/select_pdf_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Library admin panel',
      debugShowCheckedModeBanner: false,
      home: DependenciesScope(
        appDependencies: AppDependencies.instance(),
        child: const Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocProvider<SelectPdf>(
        create: (_) => SelectPdf(
          selectPdfRepository: SelectPdfRepository(
            filePicker: DependenciesScope.of(context).appFilePicker,
          ),
        ),
        child: const SelectPdfScreen(),
      ),
    );
  }
}
