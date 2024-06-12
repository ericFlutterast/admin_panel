//TODO:
typedef Subject = int;

abstract interface class ISubjectController {
  Future<Subject> getSubject({int? id});

  Future<int> createSubject({
    required final String title,
  });

  Future<void> deleteSubject({required final int id});
}

abstract interface class IManagementFacultyLink {
  Future<void> linkFaculty({required final int facultyId});

  Future<void> unlinkFaculty({required final int facultyId});
}

abstract interface class IManagementFieldLink {
  Future<void> linkField({
    required final int fieldId,
    required final int subjectId,
  });

  Future<void> unlinkField({required final int fieldId});
}

abstract interface class IManagementCourseLink {
  Future<void> linkCourse({
    required final int courseId,
    required final int subjectId,
  });

  Future<void> unlinkCourse({required final int courseId});
}

abstract interface class IManagementBookLink {
  Future<void> linkBook({
    required final int subjectId,
    required final String bookId,
  });

  Future<void> unlinkBook({required final int bookId});
}
