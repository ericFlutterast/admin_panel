import 'package:admin_panel_for_library/src/common/network_client/network_client.dart';
import 'package:admin_panel_for_library/src/features/subject_management/data/data_sources/subject_data_source_interface.dart';

final class LinkCourseRepository implements IManagementCourseLink {
  LinkCourseRepository({
    required NetworkClient networkClient,
  }) : _networkClient = networkClient;

  final NetworkClient _networkClient;

  @override
  Future<void> linkCourse({required final int courseId, required final int subjectId}) async {
    await _networkClient.request(
      type: Put(path: '/subjects/$subjectId/link/course', data: {'course': courseId}),
    );
  }

  @override
  Future<void> unlinkCourse({required int courseId}) async {}
}
