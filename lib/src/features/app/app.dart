import 'package:admin_panel_for_library/src/features/common/data/data_sources/select_pdf_data_source.dart';
import 'package:admin_panel_for_library/src/features/common/di/dependencies_scope.dart';
import 'package:admin_panel_for_library/src/features/everything_books/data/repositories/everythings_books_repositories.dart';
import 'package:admin_panel_for_library/src/features/everything_books/domain_bloc/blocs/all_books_bloc.dart';
import 'package:admin_panel_for_library/src/features/everything_books/ui/screens/everything_books_screen.dart';
import 'package:admin_panel_for_library/src/features/select_pdf/pick_pdf/domain_bloc/blocs/select_pdf.dart';
import 'package:admin_panel_for_library/src/features/select_pdf/pick_pdf/ui/screens/select_pdf_screen.dart';
import 'package:admin_panel_for_library/src/features/subject_management/create_subject_properties/ui/widgets/select_subjects.dart';
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
          everythingBooksRepo: EverythingBooksRepositories(
            everythingBooksDataSource: DependenciesScope.of(context).everythingBooksDataSource,
          ),
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
        selectPdfRepository: SelectPdfDataSource(
          filePicker: DependenciesScope.of(context).appFilePicker,
        ),
        uploadBookRepository: DependenciesScope.of(context).uploadBookRepository,
      ),
      child: const Row(
        children: [
          Expanded(
            flex: 3,
            child: SelectSubjects(),
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
