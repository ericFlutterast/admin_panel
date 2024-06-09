import 'package:admin_panel_for_library/src/common/network_client/network_client.dart';
import 'package:admin_panel_for_library/src/features/subject_management/data/data_sources/subject_data_source_interface.dart';

final class SubjectDataSource implements ISubjectDataSource {
  SubjectDataSource({
    required NetworkClient networkClient,
  }) : _networkClient = networkClient;

  final NetworkClient _networkClient;

  @override
  Future<void> createSubject({required String title}) async {
    await _networkClient.request(
      type: Post(
        path: '/subjects',
        data: {'title': title},
      ),
    );
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

  @override
  Future<void> linkBook({required int bookId}) async {
    await _networkClient.request(type: Put(path: '/subjects/$bookId/link/book'));
  }

  @override
  Future<void> linkCourse({required int courseId}) async {
    await _networkClient.request(type: Put(path: '/subjects/$courseId/link/course'));
  }

  @override
  Future<void> linkFaculty({required int facultyId}) async {
    await _networkClient.request(type: Put(path: '/subjects/$facultyId/link/faculty'));
  }

  @override
  Future<void> linkField({required int fieldId}) async {
    await _networkClient.request(type: Put(path: '/subjects/$fieldId/link/field'));
  }

  @override
  Future<void> unlinkBook({required int bookId}) async {
    await _networkClient.request(type: Delete(path: '/subjects/$bookId/link/book'));
  }

  @override
  Future<void> unlinkCourse({required int courseId}) async {
    await _networkClient.request(type: Delete(path: '/subjects/$courseId/link/course'));
  }

  @override
  Future<void> unlinkFaculty({required int facultyId}) async {
    await _networkClient.request(type: Delete(path: '/subjects/$facultyId/link/faculty'));
  }

  @override
  Future<void> unlinkField({required int fieldId}) async {
    await _networkClient.request(type: Delete(path: '/subjects/$fieldId/link/field'));
  }
}
