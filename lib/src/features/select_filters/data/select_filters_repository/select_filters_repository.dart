import 'package:admin_panel_for_library/src/common/network_client/network_client.dart';
import 'package:admin_panel_for_library/src/features/select_filters/data/select_filters_repository_interface/select_filters_repository_interface.dart';

final class SelectFiltersRepository implements ISelectFiltersRepository {
  const SelectFiltersRepository({
    required NetworkClient networkClient,
  }) : _networkClient = networkClient;

  final NetworkClient _networkClient;

  @override
  Future<void> createSubject() {
    throw UnimplementedError();
  }

  @override
  Future<void> deleteSubject() {
    throw UnimplementedError();
  }

  @override
  Future<SubjectModel> fetchAllSubjects() {
    throw UnimplementedError();
  }

  @override
  Future<void> linkSubjectToBook() {
    throw UnimplementedError();
  }

  @override
  Future<void> unlinkSubjectFromBook() {
    throw UnimplementedError();
  }
}
