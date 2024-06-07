import 'package:admin_panel_for_library/src/common/network_client/network_client.dart';
import 'package:admin_panel_for_library/src/features/subject_menagment/data/models/filter_model.dart';
import 'package:admin_panel_for_library/src/features/subject_menagment/data/repositories_interface/filters_repository_interface.dart';

final class FieldsRepository implements IFiltersRepository {
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
  Future<T> getAllFilters<T extends Filters>({int? id}) async {
    final response = await _networkClient.request(type: Get(path: '/fields/${id ?? ''}'));

    return [] as T;
  }
}

//TODO:
final class FakeFieldsRepo implements IFiltersRepository {
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
  Future<T> getAllFilters<T extends Filters>({int? id}) async {
    await Future.delayed(const Duration(seconds: 2));

    final fields = {
      1: [
        FieldModel(title: '', id: 1),
        FieldModel(title: 'Физра', id: 2),
        FieldModel(title: 'Физика', id: 3),
      ],
      2: [
        FieldModel(title: 'Матан', id: 1),
        FieldModel(title: 'Алгоритмы', id: 2),
        FieldModel(title: 'Физра', id: 3),
      ],
      3: [
        FieldModel(title: 'Психология', id: 1),
        FieldModel(title: 'Физра', id: 2),
        FieldModel(title: 'Матан', id: 3),
      ],
      4: [
        FieldModel(title: 'Информационные системы и технологии', id: 1),
        FieldModel(title: 'Инфокаммунникационные системы и технологии', id: 2),
        FieldModel(title: 'Радио физика', id: 3),
      ],
      5: [
        FieldModel(title: 'Жопа', id: 1),
        FieldModel(title: 'Физра', id: 2),
        FieldModel(title: 'Пися', id: 3),
      ],
    };

    return fields[id] as T;
  }
}
