import 'package:admin_panel_for_library/src/features/common/di/dependencies_scope.dart';
import 'package:admin_panel_for_library/src/features/common/widgets/default_title.dart';
import 'package:admin_panel_for_library/src/features/subject_management/create_subject_properties/data/models/filter_model.dart';
import 'package:admin_panel_for_library/src/features/subject_management/create_subject_properties/data/repositories/fields_repository.dart';
import 'package:admin_panel_for_library/src/features/subject_management/create_subject_properties/data/repositories/link_course_repository.dart';
import 'package:admin_panel_for_library/src/features/subject_management/create_subject_properties/data/repositories/link_field_repository.dart';
import 'package:admin_panel_for_library/src/features/subject_management/create_subject_properties/domain_bloc/blocs/create_subject/create_subject.dart';
import 'package:admin_panel_for_library/src/features/subject_management/create_subject_properties/domain_bloc/blocs/faculty/faculty.dart';
import 'package:admin_panel_for_library/src/features/subject_management/create_subject_properties/domain_bloc/blocs/fields/fields.dart';
import 'package:admin_panel_for_library/src/features/subject_management/data/services/subject_service.dart';
import 'package:admin_panel_for_library/src/features/subject_management/select_pdf_to_attach_to_subject/ui/widgets/select_pdf_to_attach_to_subject.dart';
import 'package:admin_panel_for_library/src/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectSubjects extends StatelessWidget {
  const SelectSubjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<FacultyBloc>(
        create: (_) => FacultyBloc(
          facultyRepository: DependenciesScope.of(context, listen: false).facultiesRepository,
        )..add(const FacultyEvent.fetchFaculties()),
        child: Builder(
          builder: (context) {
            return Column(
              //padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                const Center(child: DefaultTitle(title: 'Выбрать предмет')),
                const SizedBox(height: 30),
                const _CreateNewSubject(),
                const SizedBox(height: 45),
                BlocBuilder<FacultyBloc, FacultyState>(
                  builder: (context, state) {
                    return state.maybeMap<Widget>(
                      loading: (state) {
                        return const Center(child: CircularProgressIndicator());
                      },
                      success: (state) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            for (final faculty in state.faculties)
                              TextButton(
                                onPressed: () {},
                                child: Text(faculty.title),
                              ),
                          ],
                        );
                      },
                      orElse: () {
                        return const Center(child: Text('Что-то пошло не так'));
                      },
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

final class _CreateNewSubject extends StatefulWidget {
  const _CreateNewSubject();

  @override
  State<_CreateNewSubject> createState() => _CreateNewSubjectState();
}

class _CreateNewSubjectState extends State<_CreateNewSubject> {
  int? _courseId;
  int? _fieldId;

  late final FieldsBloc _fieldsBloc;
  late final FacultyBloc _facultiesBloc;
  late final CreateSubjectBloc _createSubjectBloc;
  late final TextEditingController _titleController;
  late final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController();

    _facultiesBloc = BlocProvider.of<FacultyBloc>(context);
    _fieldsBloc = FieldsBloc(
      fieldsRepository: FieldsDataSource(
        networkClient: DependenciesScope.of(context, listen: false).appDependencies.networkClient,
      ),
    );
    _createSubjectBloc = CreateSubjectBloc(
      subjectService: SubjectService(
        networkClient: DependenciesScope.of(context, listen: false).appDependencies.networkClient,
      ),
      managementCourseLink: LinkCourseRepository(
        networkClient: DependenciesScope.of(context, listen: false).appDependencies.networkClient,
      ),
      managementFieldLink: LinkFieldRepository(
        networkClient: DependenciesScope.of(context, listen: false).appDependencies.networkClient,
      ),
    );
  }

  @override
  void dispose() {
    _fieldsBloc.close();
    _facultiesBloc.close();
    _createSubjectBloc.close();

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
    final appDependencies = DependenciesScope.of(context).appDependencies;

    return BlocListener<CreateSubjectBloc, CreateSubjectState>(
      bloc: _createSubjectBloc,
      listenWhen: (prevState, currentState) {
        return prevState != currentState;
      },
      listener: (context, state) {
        state.mapOrNull(success: (state) {
          Navigator.of(context).pop();

          Navigator.of(context).push(
            DialogRoute(
              context: context,
              builder: (context) {
                return SelectPdfToAttachToSubjectModal(
                  subjectId: state.subjectId,
                  appDependencies: appDependencies,
                );
              },
            ),
          );
        });
      },
      child: SizedBox(
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
                                    bloc: _facultiesBloc,
                                    builder: (context, state) {
                                      return state.maybeMap<Widget>(
                                        orElse: () {
                                          return _DropdownMenuWrapper<int>(
                                            validator: _emptyValidator,
                                            width: dropDownMenuWidth,
                                            filters: state.faculties,
                                            onSelected: (facultyId) {
                                              if (facultyId != null) {
                                                _fieldsBloc.add(
                                                  FieldsEvent.fetchFields(facultyId: facultyId),
                                                );
                                              }
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
                                    width: dropDownMenuWidth,
                                    onSelected: (courseId) => setState(
                                      () => _courseId = courseId,
                                    ),
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
                                        width: dropDownMenuWidth,
                                        filters: state.fields,
                                        onSelected: (id) => setState(
                                          () => _fieldId = id,
                                        ),
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
                                    controller: _titleController,
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
                              child: BlocBuilder<CreateSubjectBloc, CreateSubjectState>(
                                bloc: _createSubjectBloc,
                                builder: (context, state) {
                                  return state.maybeMap<Widget>(
                                    loading: (state) {
                                      return const Align(
                                        alignment: Alignment.center,
                                        child: CircularProgressIndicator(),
                                      );
                                    },
                                    orElse: () {
                                      return Padding(
                                        padding: const EdgeInsets.only(bottom: 10, right: 10),
                                        child: Align(
                                          alignment: Alignment.bottomRight,
                                          child: SizedBox(
                                            height: buttonHeight,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                ElevatedButton(
                                                  onPressed: () async {
                                                    final isValidate =
                                                        _formKey.currentState?.validate() ?? false;

                                                    if (isValidate && _fieldId != null && _courseId != null) {
                                                      _createSubjectBloc.add(
                                                        CreateSubjectEvent.createSubject(
                                                          title: _titleController.text,
                                                          fieldId: _fieldId!,
                                                          courseId: _courseId!,
                                                        ),
                                                      );
                                                    }

                                                    _titleController.clear();
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
                                      );
                                    },
                                  );
                                },
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
      ),
    );
  }
}

class _DropdownMenuWrapper<T extends Object?> extends FormField<T> {
  final TextEditingController? controller;
  final double width;
  final List<FilterModel> filters;
  final void Function(T?)? onSelected;
  final Widget? label;

  _DropdownMenuWrapper({
    required this.width,
    required this.filters,
    this.controller,
    this.onSelected,
    this.label,
    T? initialSelection,
    super.validator,
  }) : super(
          initialValue: initialSelection,
          builder: (field) {
            final _DropDownMenuWrapperFormState<T> state = field as _DropDownMenuWrapperFormState<T>;

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
