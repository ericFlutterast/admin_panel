import 'package:admin_panel_for_library/src/common/network_client/network_client.dart';
import 'package:admin_panel_for_library/src/features/common/data/data_sources/everything_books_data_source.dart';
import 'package:admin_panel_for_library/src/features/common/data/data_sources/upload_book_data_source.dart';
import 'package:admin_panel_for_library/src/features/common/data/data_sources_interfaces/everything_books_data_source_interface.dart';
import 'package:admin_panel_for_library/src/features/common/data/data_sources_interfaces/upload_book_data_source_interface.dart';
import 'package:admin_panel_for_library/src/features/common/file_picker/app_file_picker.dart';
import 'package:admin_panel_for_library/src/features/subject_management/create_subject_properties/data/repositories/faculties_repository.dart';
import 'package:admin_panel_for_library/src/features/subject_management/create_subject_properties/data/repositories/fields_repository.dart';
import 'package:flutter/cupertino.dart';

final class AppDependencies {
  AppDependencies._() {
    init();
  }

  static AppDependencies instance() => AppDependencies._();

  late final AppFilePicker _filePicker;
  late final NetworkClient _networkClient;
  late final IUploadBookDataSource _uploadBookRepository;
  late final IEverythingBooksDataSource _everythingBooksRepository;
  late final FacultiesRepository _facultiesRepository;
  late final FieldsRepository _fieldsRepository;

  AppFilePicker get filePicker => _filePicker;

  IUploadBookDataSource get uploadBookRepository => _uploadBookRepository;

  IEverythingBooksDataSource get everythingBooksRepository => _everythingBooksRepository;

  FieldsRepository get fieldsRepository => _fieldsRepository;

  FacultiesRepository get facultiesRepository => _facultiesRepository;

  NetworkClient get networkClient => _networkClient;

  void init() {
    _filePicker = AppFilePicker();
    _networkClient = NetworkClient();
    _fieldsRepository = FieldsRepository(networkClient: _networkClient);
    _facultiesRepository = FacultiesRepository(networkClient: _networkClient);
    _uploadBookRepository = UploadBookDataSource(networkClient: _networkClient);
    _everythingBooksRepository = EverythingBooksDataSource(networkClient: _networkClient);
  }
}

final class DependenciesScope extends InheritedWidget {
  const DependenciesScope({
    super.key,
    required super.child,
    required AppDependencies appDependencies,
  }) : _appDependencies = appDependencies;

  final AppDependencies _appDependencies;

  AppDependencies get appDependencies => _appDependencies;

  AppFilePicker get appFilePicker => _appDependencies.filePicker;

  IUploadBookDataSource get uploadBookRepository => _appDependencies.uploadBookRepository;

  IEverythingBooksDataSource get everythingBooksRepository => _appDependencies.everythingBooksRepository;

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
