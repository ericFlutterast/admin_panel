import 'package:admin_panel_for_library/src/common/network_client/network_client.dart';
import 'package:admin_panel_for_library/src/features/subject_management/data/data_sources/subject_data_source_interface.dart';

final class LinkFieldRepository implements IManagementFieldLink {
  LinkFieldRepository({
    required NetworkClient networkClient,
  }) : _networkClient = networkClient;

  final NetworkClient _networkClient;

  @override
  Future<void> linkField({required int fieldId, required int subjectId}) async {
    await _networkClient.request(
      type: Put(path: '/subjects/$subjectId/link/field', data: {'fieldId': fieldId}),
    );
  }

  @override
  Future<void> unlinkField({required int fieldId}) async {
    throw UnimplementedError();
  }
}
