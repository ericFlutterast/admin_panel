import 'package:admin_panel_for_library/src/features/subject_management/create_subject_properties/data/models/subject_model.dart';

typedef Subject = int;

abstract interface class ISubjectController {
  Future<Subject> getSubject({int? id});

  Future<int> createSubject({
    required final SubjectModel subjectModel,
  });

  Future<void> deleteSubject({required final int id});
}

abstract interface class IManagementFacultyLink {
  Future<void> linkFaculty({required final int facultyId});

  Future<void> unlinkFaculty({required final int facultyId});
}

abstract interface class IManagementFieldLink {
  Future<void> linkField({required final int fieldId});

  Future<void> unlinkField({required final int fieldId});
}

abstract interface class IManagementCourseLink {
  Future<void> linkCourse({required final int courseId});

  Future<void> unlinkCourse({required final int courseId});
}

abstract interface class IManagementBookLink {
  Future<void> linkBook({required final int subjectId});

  Future<void> unlinkBook({required final int bookId});
}
