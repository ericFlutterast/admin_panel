import 'package:admin_panel_for_library/src/features/common/data/repository_interface/select_pdf_repository.dart';
import 'package:admin_panel_for_library/src/features/common/di/dependencies_scope.dart';
import 'package:admin_panel_for_library/src/features/everything_books/domain_bloc/blocs/all_books_bloc.dart';
import 'package:admin_panel_for_library/src/features/everything_books/ui/screens/everything_books_screen.dart';
import 'package:admin_panel_for_library/src/features/select_pdf/pick_pdf/domain_bloc/blocs/select_pdf.dart';
import 'package:admin_panel_for_library/src/features/select_pdf/pick_pdf/ui/screens/select_pdf_screen.dart';
import 'package:admin_panel_for_library/src/features/subject_menagment/ui/screens/select_subjects_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Library admin panel',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
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
      child: BlocProvider<AllBooks>(
        create: (_) => AllBooks(
          everythingBooksRepo: DependenciesScope.of(context).everythingBooksRepository,
        )..add(const AllBooksEvents.fetchBooks()),
        child: const Padding(
          padding: EdgeInsets.only(top: 25),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: SelectPdfProvider(),
              ),
              Expanded(
                flex: 1,
                child: EverythingBooksScreen(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SelectPdfProvider extends StatelessWidget {
  const SelectPdfProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SelectPdf>(
      create: (_) => SelectPdf(
        selectPdfRepository: SelectPdfRepository(
          filePicker: DependenciesScope.of(context).appFilePicker,
        ),
        uploadBookRepository: DependenciesScope.of(context).uploadBookRepository,
      ),
      child: const Row(
        children: [
          Expanded(
            flex: 3,
            child: SelectSubjectsScreen(),
          ),
          Expanded(
            flex: 4,
            child: SelectPdfScreen(),
          ),
        ],
      ),
    );
  }
}
