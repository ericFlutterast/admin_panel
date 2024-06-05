import 'package:admin_panel_for_library/src/features/subjects/data/models/filter_model.dart';

typedef Faculties = List<String>;

abstract interface class IFiltersLifecycleRepository {
  Future<List<FilterModel>> getAllFilters<T extends FilterModel>({int? id});

  Future<void> createFilter({required final String title});

  Future<void> deleteFilter({required final int id});
}
