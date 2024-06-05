import 'package:admin_panel_for_library/src/common/network_client/network_client.dart';
import 'package:admin_panel_for_library/src/features/subjects/data/models/filter_model.dart';
import 'package:admin_panel_for_library/src/features/subjects/data/repositories_interface/filters_repository_interface.dart';

final class FacultiesRepository implements IFiltersLifecycleRepository {
  FacultiesRepository({
    required NetworkClient networkClient,
  }) : _networkClient = networkClient;

  final NetworkClient _networkClient;

  @override
  Future<void> createFilter({required String title}) async {
    await _networkClient.request(
      type: Post(
        path: '/faculties',
        data: {'title': title},
      ),
    );
  }

  @override
  Future<void> deleteFilter({required int id}) async {
    await _networkClient.request(type: Delete(path: '/faculties/$id'));
  }

  @override
  Future<List<FilterModel>> getAllFilters<T extends FilterModel>({int? id}) async {
    final response = await _networkClient.request(type: Get(path: '/faculties/${id ?? ''}'));

    return [];
  }
}

//TODO:
final class FakeFacultiesRepo implements IFiltersLifecycleRepository {
  @override
  Future<void> createFilter({required String title}) {
    // TODO: implement createFilter
    throw UnimplementedError();
  }

  @override
  Future<void> deleteFilter({required int id}) {
    // TODO: implement deleteFilter
    throw UnimplementedError();
  }

  @override
  Future<List<FilterModel>> getAllFilters<T extends FilterModel>({int? id}) async {
    await Future.delayed(const Duration(seconds: 2));

    return [
      FacultyModel(title: 'ФТФ', id: '1'),
      FacultyModel(title: 'ФУП', id: '2'),
      FacultyModel(title: 'ФПМиКТ', id: '3'),
    ];
  }
}
