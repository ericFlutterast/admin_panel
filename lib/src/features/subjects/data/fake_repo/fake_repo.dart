abstract interface class IFakeRepo {
  Future<List<String>> getFilters(int step);
}

class FakeRepoImpl implements IFakeRepo {
  @override
  Future<List<String>> getFilters(int step) async {
    return _filters[step]!;
  }
}

final _filters = <int, List<String>>{
  1: ['ФТФ', 'ФПМ', 'ИНСПО'],
  2: ['1', '2', '3', '4', '5'],
  3: ['ИС', 'ИТИС', 'РФ', 'БТИС'],
  4: ['Матан', 'Прога', 'Физра'],
};
