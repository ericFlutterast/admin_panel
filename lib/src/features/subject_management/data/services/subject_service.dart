import 'package:admin_panel_for_library/src/common/network_client/network_client.dart';
import 'package:admin_panel_for_library/src/features/subject_management/data/data_sources/subject_data_source_interface.dart';

final class SubjectService implements ISubjectController {
  SubjectService({
    required NetworkClient networkClient,
  }) : _networkClient = networkClient;

  final NetworkClient _networkClient;

  @override
  Future<int> createSubject({required String title}) async {
    final response = await _networkClient.request(
      type: Post(
        path: '/subjects',
        data: {'title': title},
      ),
    );

    if (response?.data == null) throw Exception('Не вернулось id созданного объекта');

    return response!.data['id'] as int;
  }

  @override
  Future<void> deleteSubject({required int id}) async {
    await _networkClient.request(
      type: Delete(path: '/subjects/$id'),
    );
  }

  @override
  Future<Subject> getSubject({int? id}) async {
    await _networkClient.request(
      type: Get(path: '/subjects/${id ?? ''}'),
    );

    //TODO:
    return 1;
  }
}
