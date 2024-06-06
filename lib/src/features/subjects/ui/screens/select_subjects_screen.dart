import 'package:admin_panel_for_library/src/features/common/di/dependencies_scope.dart';
import 'package:admin_panel_for_library/src/features/common/widgets/default_title.dart';
import 'package:admin_panel_for_library/src/features/subjects/data/models/filter_model.dart';
import 'package:admin_panel_for_library/src/features/subjects/data/repositories/fields_repository.dart';
import 'package:admin_panel_for_library/src/features/subjects/domain_bloc/blocs/filters/filters.dart';
import 'package:admin_panel_for_library/src/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectSubjectsScreen extends StatelessWidget {
  const SelectSubjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Center(child: DefaultTitle(title: 'Выбрать предмет')),
          SizedBox(height: 30),
          _CreateNewSubject(),
        ],
      ),
    );
  }
}

class _CreateNewSubject extends StatefulWidget {
  const _CreateNewSubject();

  @override
  State<_CreateNewSubject> createState() => _CreateNewSubjectState();
}

class _CreateNewSubjectState extends State<_CreateNewSubject> {
  late final TextEditingController _facultyController;
  late final TextEditingController _courseController;
  late final TextEditingController _fieldController;
  late final TextEditingController _subjectController;
  late final FiltersBloc _filtersBloc;

  @override
  void initState() {
    super.initState();

    _filtersBloc = FiltersBloc(
      facultyRepository: DependenciesScope.of(context, listen: false).facultiesRepository,
      fieldsRepository: FakeFieldsRepo(),
    )..add(const FiltersEvent.fetchFaculties());

    _facultyController = TextEditingController();
    _courseController = TextEditingController();
    _fieldController = TextEditingController();
    _subjectController = TextEditingController();
  }

  @override
  void dispose() {
    _facultyController.dispose();
    _courseController.dispose();
    _fieldController.dispose();
    _subjectController.dispose();
    _filtersBloc.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: BlocProvider.value(
        value: _filtersBloc,
        child: ElevatedButton(
          onPressed: () {
            showDialog<Widget>(
              context: context,
              builder: (context) {
                final dialogHeight = MediaQuery.of(context).size.height * 0.9;
                final dialogWidth = MediaQuery.of(context).size.width * 0.4;

                const horizontalPadding = 16.0;
                const verticalPadding = 8.0;
                const buttonHeight = 30.0;

                final dropDownMenuWidth = dialogWidth - horizontalPadding * 2;

                return Dialog(
                  child: Container(
                    height: dialogHeight,
                    width: dialogWidth,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: verticalPadding,
                        horizontal: horizontalPadding,
                      ),
                      child: CustomScrollView(
                        physics: const BouncingScrollPhysics(),
                        slivers: [
                          SliverList(
                            delegate: SliverChildListDelegate(
                              [
                                const SizedBox(height: 25),
                                Center(
                                  child: Text(
                                    'Заполнить фильтры',
                                    style: UiKitTextStyles.titleStyle,
                                  ),
                                ),
                                const SizedBox(height: 25),
                                const Text('Факультет'),
                                BlocBuilder<FiltersBloc, FiltersState>(
                                  bloc: _filtersBloc,
                                  builder: (context, state) {
                                    return state.maybeMap<Widget>(
                                      orElse: () {
                                        return _DropDawnMenuWrapper<int>(
                                          bloc: _filtersBloc,
                                          onSelected: (facultyId) {
                                            if (facultyId != null) {
                                              _filtersBloc
                                                  .add(FiltersEvent.fetchFields(facultyId: facultyId));
                                            }
                                          },
                                          controller: _facultyController,
                                          width: dropDownMenuWidth,
                                          filters: state.faculties,
                                        );
                                      },
                                    );
                                  },
                                ),
                                const SizedBox(height: 10),
                                const Text('Курс'),
                                DropdownMenu(
                                  onSelected: (value) {},
                                  controller: _courseController,
                                  width: dropDownMenuWidth,
                                  dropdownMenuEntries: [
                                    for (int i = 0; i < 4; i++)
                                      DropdownMenuEntry(
                                        value: i,
                                        label: '${i + 1} курс',
                                      ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                const Text('Направление'),
                                BlocBuilder<FiltersBloc, FiltersState>(
                                  bloc: _filtersBloc,
                                  builder: (context, state) {
                                    return state.maybeMap<Widget>(
                                      orElse: () {
                                        return _DropDawnMenuWrapper(
                                          bloc: _filtersBloc,
                                          controller: _fieldController,
                                          width: dropDownMenuWidth,
                                          filters: state.fields,
                                        );
                                      },
                                    );
                                  },
                                ),
                                const SizedBox(height: 10),
                                const Text('Название предмета'),
                                TextFormField(
                                  controller: _subjectController,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 1,
                                        color: Colors.black,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SliverFillRemaining(
                            hasScrollBody: false,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 10, right: 10),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: SizedBox(
                                  height: buttonHeight,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Далее',
                                          style: UiKitTextStyles.buttonStyle.copyWith(
                                            color: Colors.blue,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 15),
                                      ElevatedButton(
                                        onPressed: Navigator.of(context).pop,
                                        child: Text(
                                          'Отмена',
                                          style: UiKitTextStyles.buttonStyle.copyWith(
                                            color: Colors.red,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
          child: Text(
            'Добавить пердмет в базу',
            style: UiKitTextStyles.buttonStyle,
          ),
        ),
      ),
    );
  }
}

class _DropDawnMenuWrapper<T extends Object?> extends StatelessWidget {
  const _DropDawnMenuWrapper({
    required this.bloc,
    required this.controller,
    required this.width,
    required this.filters,
    this.onSelected,
  });

  final FiltersBloc bloc;
  final TextEditingController controller;
  final double width;
  final List<FilterModel> filters;
  final void Function(T?)? onSelected;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      label: BlocBuilder<FiltersBloc, FiltersState>(
        bloc: bloc,
        builder: (context, state) {
          return state.maybeMap<Widget>(
            loading: (_) => const SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(),
            ),
            orElse: () {
              return const SizedBox.shrink();
            },
          );
        },
      ),
      controller: controller,
      width: width,
      onSelected: onSelected,
      dropdownMenuEntries: filters.map((item) {
        return DropdownMenuEntry<T>(value: item.id as T, label: item.title);
      }).toList(),
    );
  }
}
