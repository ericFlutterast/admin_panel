import 'package:admin_panel_for_library/src/common/network_client/network_client.dart';
import 'package:admin_panel_for_library/src/features/subjects/data/models/filter_model.dart';
import 'package:admin_panel_for_library/src/features/subjects/data/repositories_interface/filters_repository_interface.dart';

final class FieldsRepository implements IFiltersLifecycleRepository {
  FieldsRepository({
    required NetworkClient networkClient,
  }) : _networkClient = networkClient;

  final NetworkClient _networkClient;

  @override
  Future<void> createFilter({required String title}) async {
    await _networkClient.request(
      type: Post(
        path: '/fields',
        data: {'title': title},
      ),
    );
  }

  @override
  Future<void> deleteFilter({required int id}) async {
    await _networkClient.request(type: Delete(path: '/fields/$id'));
  }

  @override
  Future<List<FilterModel>> getAllFilters<T extends FilterModel>({int? id}) async {
    final response = await _networkClient.request(type: Get(path: '/fields/${id ?? ''}'));

    return [];
  }
}

//TODO:
final class FakeFieldsRepo implements IFiltersLifecycleRepository {
  @override
  Future<void> createFilter({required String title}) {
    // TODO: implement createFilter
    throw UnimplementedError();
  }

  @override
  Future<void> deleteFilter({required int id}) {
    // TODO: implement deleteFilter
    throw UnimplementedError();
  }

  @override
  Future<List<FilterModel>> getAllFilters<T extends FilterModel>({int? id}) async {
    await Future.delayed(const Duration(seconds: 2));

    final fields = {
      '1': [
        FieldModel(title: 'Матан', id: '1'),
        FieldModel(title: 'Физра', id: '2'),
        FieldModel(title: 'Физика', id: '3'),
      ],
      '2': [
        FieldModel(title: 'Матан', id: '1'),
        FieldModel(title: 'Алгоритмы', id: '2'),
        FieldModel(title: 'Физра', id: '3'),
      ],
      '3': [
        FieldModel(title: 'Психология', id: '1'),
        FieldModel(title: 'Физра', id: '2'),
        FieldModel(title: 'Матан', id: '3'),
      ],
    };

    return fields[id.toString] ?? [];
  }
}
