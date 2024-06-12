import 'package:flutter/material.dart';

class Search<T> extends StatelessWidget {
  const Search({
    super.key,
    required this.builder,
    required this.controller,
  });

  final CustomSearchController<T> controller;
  final Widget Function(BuildContext, List<T>) builder;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: controller,
      builder: (context, _) {
        return builder.call(context, controller.searchedResult);
      },
    );
  }
}

class CustomSearchController<T> extends ChangeNotifier {
  CustomSearchController({
    required List<T> initialList,
    required TextEditingController controller,
  })  : _initialList = initialList,
        _controller = controller {
    _controller.addListener(_search);
  }

  List<T>? _resultList;

  final List<T> _initialList;
  final TextEditingController _controller;

  List<T> get searchedResult => _resultList ?? _initialList;

  void _search() {
    _resultList = _initialList.where((T element) {
      final searchValue = element.toString().toLowerCase();

      final res = searchValue.startsWith(_controller.text.toLowerCase());

      return res;
    }).toList();

    _sortResult();
    notifyListeners();
  }

  void _sortResult() {
    assert(_resultList != null, 'error: check null operator _resultList:$_resultList');

    _resultList!.sort((first, second) {
      final firstSplit = first.toString().split(' ');
      final secondSplit = second.toString().split(' ');

      final firstContainedValueIndex = firstSplit.firsWhereIndexed((element) {
        return element.toString().startsWith(_controller.text);
      });

      final secondContainedValueIndex = secondSplit.firsWhereIndexed((element) {
        return element.toString().startsWith(_controller.text);
      });

      return firstContainedValueIndex.compareTo(secondContainedValueIndex);
    });
  }
}

extension GetIndexOfFirstEntry on List {
  int firsWhereIndexed<E>(bool Function(E element) test) {
    for (int i = 0; i < length; i++) {
      if (test(this[i])) return i;
    }

    return -1;
  }
}
