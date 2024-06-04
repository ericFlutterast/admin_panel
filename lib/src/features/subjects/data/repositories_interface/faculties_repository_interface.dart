import 'package:admin_panel_for_library/src/features/subjects/data/models/filter_model.dart';

typedef Faculties = List<String>;

abstract interface class IFiltersLifecycleRepository {
  Future<List<T>> getAllFaculties<T extends FilterModel>({int? id});

  Future<void> createFaculty({required final String title});

  Future<void> deleteFaculty({required final int id});
}
