import 'package:admin_panel_for_library/src/features/common/di/dependencies_scope.dart';
import 'package:admin_panel_for_library/src/features/common/widgets/default_title.dart';
import 'package:admin_panel_for_library/src/features/subject_menagment/data/models/filter_model.dart';
import 'package:admin_panel_for_library/src/features/subject_menagment/data/repositories/fields_repository.dart';
import 'package:admin_panel_for_library/src/features/subject_menagment/domain_bloc/blocs/faculty/faculty.dart';
import 'package:admin_panel_for_library/src/features/subject_menagment/domain_bloc/blocs/fields/fields.dart';
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
  final _controllers = {
    #facultyController: TextEditingController(),
    #courseController: TextEditingController(),
    #fieldController: TextEditingController(),
    #subjectController: TextEditingController(),
  };

  late final FacultyBloc _facultyBloc;
  late final FieldsBloc _fieldsBloc;

  late final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    _facultyBloc = FacultyBloc(
      facultyRepository: DependenciesScope.of(context, listen: false).facultiesRepository,
    )..add(const FacultyEvent.fetchFaculties());

    _fieldsBloc = FieldsBloc(fieldsRepository: FakeFieldsRepo());
  }

  void _clearState() {
    for (final controller in _controllers.values) {
      controller.clear();
    }
  }

  @override
  void dispose() {
    for (final controller in _controllers.values) {
      controller.dispose();
    }

    _facultyBloc.close();
    _fieldsBloc.close();

    super.dispose();
  }

  String? _emptyValidator(Object? value) {
    if (value == null || value.toString().isEmpty) {
      return 'Пустое поле';
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
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

              return Form(
                key: _formKey,
                child: Dialog(
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
                                const SizedBox(height: 5),
                                BlocBuilder<FacultyBloc, FacultyState>(
                                  bloc: _facultyBloc,
                                  builder: (context, state) {
                                    return state.maybeMap<Widget>(
                                      orElse: () {
                                        return _DropdownMenuWrapper<int>(
                                          validator: _emptyValidator,
                                          controller: _controllers[#facultyController]!,
                                          width: dropDownMenuWidth,
                                          filters: state.faculties,
                                          onSelected: (facultyId) {
                                            if (facultyId != null) {
                                              _fieldsBloc.add(
                                                FieldsEvent.fetchFields(facultyId: facultyId),
                                              );
                                            }

                                            setState(() {});
                                          },
                                        );
                                      },
                                    );
                                  },
                                ),
                                const SizedBox(height: 10),
                                const Text('Курс'),
                                const SizedBox(height: 5),
                                _DropdownMenuWrapper<int>(
                                  validator: _emptyValidator,
                                  controller: _controllers[#courseController]!,
                                  width: dropDownMenuWidth,
                                  filters: [
                                    for (int i = 0; i < 4; i++)
                                      FilterModel(
                                        title: '${i + 1} курс',
                                        id: i,
                                      ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                const Text('Направление'),
                                const SizedBox(height: 5),
                                BlocBuilder<FieldsBloc, FieldsState>(
                                  bloc: _fieldsBloc,
                                  builder: (context, state) {
                                    return _DropdownMenuWrapper<int>(
                                      validator: _emptyValidator,
                                      controller: _controllers[#fieldController]!,
                                      width: dropDownMenuWidth,
                                      filters: state.fields,
                                      label: state.mapOrNull<Widget>(loading: (state) {
                                        return const SizedBox(
                                          height: 20,
                                          width: 20,
                                          child: CircularProgressIndicator(),
                                        );
                                      }),
                                    );
                                  },
                                ),
                                const SizedBox(height: 10),
                                const Text('Название предмета'),
                                const SizedBox(height: 5),
                                TextFormField(
                                  validator: _emptyValidator,
                                  controller: _controllers[#subjectController]!,
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
                                        onPressed: () {
                                          final isValidate = _formKey.currentState?.validate() ?? false;

                                          if (isValidate) {
                                            print('URAAAAAAA');

                                            _clearState();

                                            Navigator.of(context).pop();
                                          }
                                        },
                                        child: Text(
                                          'Далее',
                                          style: UiKitTextStyles.buttonStyle.copyWith(
                                            color: Colors.blue,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 15),
                                      ElevatedButton(
                                        onPressed: () {
                                          _clearState();
                                          Navigator.of(context).pop();
                                        },
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
    );
  }
}

class _DropdownMenuWrapper<T extends Object?> extends FormField<T> {
  final TextEditingController controller;
  final double width;
  final List<FilterModel> filters;
  final void Function(T?)? onSelected;
  final Widget? label;

  _DropdownMenuWrapper({
    required this.controller,
    required this.width,
    required this.filters,
    this.onSelected,
    this.label,
    T? initialSelection,
    super.validator,
  }) : super(
          initialValue: initialSelection,
          builder: (field) {
            final _DropDownMenuWrapperFormState<T> state = field as _DropDownMenuWrapperFormState<T>;

            //Хендлер для вызова
            void onSelectedHandler(T? value) {
              field.didChange(value);

              onSelected?.call(value);
            }

            return DropdownMenu(
              label: label,
              controller: controller,
              width: width,
              errorText: state.errorText,
              onSelected: onSelectedHandler,
              dropdownMenuEntries: filters.map((item) {
                return DropdownMenuEntry<T>(value: item.id as T, label: item.title);
              }).toList(),
            );
          },
        );

  @override
  FormFieldState<T> createState() => _DropDownMenuWrapperFormState<T>();
}

class _DropDownMenuWrapperFormState<T> extends FormFieldState<T> {
  ///Обновляет состояние этого поля до нового значения.
  @override
  void didChange(T? value) {
    super.didChange(value);
  }

  @override
  void didUpdateWidget(oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.initialValue != widget.initialValue) {
      setValue(widget.initialValue);
    }
  }

  @override
  void reset() {
    super.reset();
    (widget as _DropdownMenuWrapper).onSelected!(value);
  }
}
