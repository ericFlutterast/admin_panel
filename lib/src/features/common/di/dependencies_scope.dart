import 'package:admin_panel_for_library/src/common/network_client/network_client.dart';
import 'package:admin_panel_for_library/src/features/common/data/repository/upload_book_repository.dart';
import 'package:admin_panel_for_library/src/features/common/data/repository_interface/everything_books_repository.dart';
import 'package:admin_panel_for_library/src/features/common/file_picker/app_file_picker.dart';
import 'package:admin_panel_for_library/src/features/subject_menagment/create_subject_properties/data/repositories/faculties_repository.dart';
import 'package:admin_panel_for_library/src/features/subject_menagment/create_subject_properties/data/repositories/fields_repository.dart';
import 'package:flutter/cupertino.dart';

final class AppDependencies {
  AppDependencies._() {
    init();
  }

  static AppDependencies instance() => AppDependencies._();

  late final AppFilePicker _filePicker;
  late final NetworkClient _networkClient;
  late final UploadBookRepository _uploadBookRepository;
  late final EverythingBooksRepository _everythingBooksRepository;
  late final FacultiesRepository _facultiesRepository;
  late final FieldsRepository _fieldsRepository;

  AppFilePicker get filePicker => _filePicker;

  UploadBookRepository get uploadBookRepository => _uploadBookRepository;

  EverythingBooksRepository get everythingBooksRepository => _everythingBooksRepository;

  FieldsRepository get fieldsRepository => _fieldsRepository;

  FacultiesRepository get facultiesRepository => _facultiesRepository;

  void init() {
    _filePicker = AppFilePicker();
    _networkClient = NetworkClient();
    _fieldsRepository = FieldsRepository(networkClient: _networkClient);
    _facultiesRepository = FacultiesRepository(networkClient: _networkClient);
    _uploadBookRepository = UploadBookRepository(networkClient: _networkClient);
    _everythingBooksRepository = EverythingBooksRepository(networkClient: _networkClient);
  }
}

final class DependenciesScope extends InheritedWidget {
  const DependenciesScope({
    super.key,
    required super.child,
    required AppDependencies appDependencies,
  }) : _appDependencies = appDependencies;

  final AppDependencies _appDependencies;

  AppFilePicker get appFilePicker => _appDependencies.filePicker;

  UploadBookRepository get uploadBookRepository => _appDependencies.uploadBookRepository;

  EverythingBooksRepository get everythingBooksRepository => _appDependencies.everythingBooksRepository;

  FieldsRepository get fieldsRepository => _appDependencies.fieldsRepository;

  FacultiesRepository get facultiesRepository => _appDependencies.facultiesRepository;

  static DependenciesScope of(BuildContext context, {bool listen = true}) {
    if (listen) {
      //Получить и подписаться
      final dependenciesScope = context.dependOnInheritedWidgetOfExactType<DependenciesScope>();
      assert(dependenciesScope != null);
      return dependenciesScope!;
    } else {
      //Только получить
      final inheritedElement = context.getElementForInheritedWidgetOfExactType<DependenciesScope>()?.widget;
      assert(inheritedElement != null);
      assert(inheritedElement is DependenciesScope);
      return inheritedElement as DependenciesScope;
    }
  }

  @override
  bool updateShouldNotify(covariant DependenciesScope oldWidget) => false;
}
