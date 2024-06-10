final class SubjectModel {
  SubjectModel({
    this.courseId,
    this.title,
    this.fieldId,
    this.facultyId,
  });

  int? facultyId;
  int? courseId;
  int? fieldId;
  String? title;

  @override
  bool operator ==(Object other) {
    return other is SubjectModel &&
        other.runtimeType == runtimeType &&
        other.facultyId == facultyId &&
        other.fieldId == fieldId &&
        other.courseId == courseId &&
        other.title == title;
  }

  @override
  int get hashCode => Object.hashAll([
        facultyId.hashCode,
        courseId.hashCode,
        fieldId.hashCode,
        title.hashCode,
      ]);
}
