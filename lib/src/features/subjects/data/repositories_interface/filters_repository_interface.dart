import 'package:admin_panel_for_library/src/features/subjects/data/models/filter_model.dart';

typedef Filters = List<FilterModel>;

abstract interface class IFiltersRepository {
  Future<TResult> getAllFilters<TResult extends Filters>({int? id});

  Future<void> createFilter({required final String title});

  Future<void> deleteFilter({required final int id});
}
