import 'package:admin_panel_for_library/src/common/network_client/network_client.dart';
import 'package:admin_panel_for_library/src/features/common/data/repository/upload_book_repository.dart';
import 'package:admin_panel_for_library/src/features/common/data/repository_interface/everything_books_repository.dart';
import 'package:admin_panel_for_library/src/features/common/file_picker/app_file_picker.dart';
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

  AppFilePicker get filePicker => _filePicker;

  UploadBookRepository get uploadBookRepository => _uploadBookRepository;

  EverythingBooksRepository get everythingBooksRepository => _everythingBooksRepository;

  void init() {
    _filePicker = AppFilePicker();
    _networkClient = NetworkClient();
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

  static DependenciesScope of(BuildContext context) {
    final dependenciesScope = context.dependOnInheritedWidgetOfExactType<DependenciesScope>();
    assert(dependenciesScope != null);
    return dependenciesScope!;
  }

  @override
  bool updateShouldNotify(covariant DependenciesScope oldWidget) => false;
}
