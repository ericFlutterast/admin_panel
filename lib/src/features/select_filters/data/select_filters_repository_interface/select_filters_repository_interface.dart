//TODO: Переписать на модель с сериализацией
typedef SubjectModel = List<int>;

abstract interface class ISelectFiltersRepository {
  Future<SubjectModel> fetchAllSubjects();
  Future<void> createSubject();
  Future<void> deleteSubject();
  Future<void> linkSubjectToBook();
  Future<void> unlinkSubjectFromBook();
}
