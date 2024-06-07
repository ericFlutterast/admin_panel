typedef Subject = int;

abstract class ISubjectRepository {
  Future<Subject> getSubject({int? id});

  Future<void> createSubject({required final String title});

  Future<void> deleteSubject({required final int id});

  Future<void> linkFaculty({required final int facultyId});

  Future<void> unlinkFaculty({required final int facultyId});

  Future<void> linkField({required final int fieldId});

  Future<void> unlinkField({required final int fieldId});

  Future<void> linkCourse({required final int courseId});

  Future<void> unlinkCourse({required final int courseId});

  Future<void> linkBook({required final int bookId});

  Future<void> unlinkBook({required final int bookId});
}
