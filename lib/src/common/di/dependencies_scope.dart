import 'package:flutter/cupertino.dart';

final class AppDependencies {
  AppDependencies._() {
    init();
  }

  static AppDependencies instance() => AppDependencies._();

  void init() {}
}

final class DependenciesScope extends InheritedWidget {
  const DependenciesScope({
    super.key,
    required super.child,
    required AppDependencies appDependencies,
  }) : _appDependencies = appDependencies;

  final AppDependencies _appDependencies;

  static DependenciesScope of(BuildContext context) {
    final dependenciesScope = context.dependOnInheritedWidgetOfExactType<DependenciesScope>();
    assert(dependenciesScope != null);
    return dependenciesScope!;
  }

  @override
  bool updateShouldNotify(covariant DependenciesScope oldWidget) => oldWidget != this;
}
