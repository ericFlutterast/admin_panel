import 'package:admin_panel_for_library/src/common/network_client/network_client.dart';
import 'package:admin_panel_for_library/src/features/subjects/data/models/filter_model.dart';
import 'package:admin_panel_for_library/src/features/subjects/data/repositories_interface/filters_repository_interface.dart';

final class FacultiesRepository implements IFiltersRepository {
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
  Future<T> getAllFilters<T extends Filters>({int? id}) async {
    final response = await _networkClient.request(type: Get(path: '/faculties/${id ?? ''}'));

    if (response == null) return [] as T;

    final result = (response.data['faculties'] as List<dynamic>)
        .map((element) => FacultyModel.fromJson(element))
        .toList();

    return result as T;
  }
}
