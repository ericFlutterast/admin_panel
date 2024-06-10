import 'package:admin_panel_for_library/src/common/network_client/network_client.dart';
import 'package:admin_panel_for_library/src/features/subject_management/create_subject_properties/data/models/subject_model.dart';
import 'package:admin_panel_for_library/src/features/subject_management/data/data_sources/subject_data_source_interface.dart';

final class SubjectService implements ISubjectController {
  SubjectService({
    required NetworkClient networkClient,
  }) : _networkClient = networkClient;

  final NetworkClient _networkClient;

  @override
  Future<int> createSubject({required SubjectModel subjectModel}) async {
    final response = await _networkClient.request(
      type: Post(
        path: '/subjects',
        data: {
          'title': subjectModel.title,
          'courses': subjectModel.courseId,
          'fields': subjectModel.fieldId,
          'books': []
        },
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
//
//   @override
//   Future<void> linkBook({required int bookId}) async {
//     await _networkClient.request(type: Put(path: '/subjects/$bookId/link/book'));
//   }
//
//   @override
//   Future<void> linkCourse({required int courseId}) async {
//     await _networkClient.request(type: Put(path: '/subjects/$courseId/link/course'));
//   }
//
//   @override
//   Future<void> linkFaculty({required int facultyId}) async {
//     await _networkClient.request(type: Put(path: '/subjects/$facultyId/link/faculty'));
//   }
//
//   @override
//   Future<void> linkField({required int fieldId}) async {
//     await _networkClient.request(type: Put(path: '/subjects/$fieldId/link/field'));
//   }
//
//   @override
//   Future<void> unlinkBook({required int bookId}) async {
//     await _networkClient.request(type: Delete(path: '/subjects/$bookId/link/book'));
//   }
//
//   @override
//   Future<void> unlinkCourse({required int courseId}) async {
//     await _networkClient.request(type: Delete(path: '/subjects/$courseId/link/course'));
//   }
//
//   @override
//   Future<void> unlinkFaculty({required int facultyId}) async {
//     await _networkClient.request(type: Delete(path: '/subjects/$facultyId/link/faculty'));
//   }
//
//   @override
//   Future<void> unlinkField({required int fieldId}) async {
//     await _networkClient.request(type: Delete(path: '/subjects/$fieldId/link/field'));
//   }
// }
