import 'package:admin_panel_for_library/src/common/file_picker/app_file_picker.dart';
import 'package:flutter/cupertino.dart';

final class AppDependencies {
  AppDependencies._() {
    init();
  }

  static AppDependencies instance() => AppDependencies._();

  late final AppFilePicker _filePicker;

  AppFilePicker get filePicker => _filePicker;

  void init() {
    _filePicker = AppFilePicker();
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

  static DependenciesScope of(BuildContext context) {
    final dependenciesScope = context.dependOnInheritedWidgetOfExactType<DependenciesScope>();
    assert(dependenciesScope != null);
    return dependenciesScope!;
  }

  @override
  bool updateShouldNotify(covariant DependenciesScope oldWidget) => false;
}
