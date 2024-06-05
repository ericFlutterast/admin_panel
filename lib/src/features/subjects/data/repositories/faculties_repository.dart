import 'package:admin_panel_for_library/src/common/network_client/network_client.dart';
import 'package:admin_panel_for_library/src/features/subjects/data/models/filter_model.dart';
import 'package:admin_panel_for_library/src/features/subjects/data/repositories_interface/faculties_repository_interface.dart';

final class FacultiesRepository implements IFiltersLifecycleRepository {
  FacultiesRepository({
    required NetworkClient networkClient,
  }) : _networkClient = networkClient;

  final NetworkClient _networkClient;

  @override
  Future<void> createFaculty({required String title}) async {
    await _networkClient.request(
      type: Post(
        path: '/faculties',
        data: {'title': title},
      ),
    );
  }

  @override
  Future<void> deleteFaculty({required int id}) async {
    await _networkClient.request(type: Delete(path: '/faculties/$id'));
  }

  @override
  Future<List<T>> getAllFaculties<T extends FilterModel>({int? id}) async {
    final response = await _networkClient.request(type: Get(path: '/faculties/${id ?? ''}'));

    return [];
  }
}
