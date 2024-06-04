import 'package:admin_panel_for_library/src/features/common/widgets/default_title.dart';
import 'package:admin_panel_for_library/src/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';

class SelectSubjectsScreen extends StatefulWidget {
  const SelectSubjectsScreen({super.key});

  @override
  State<SelectSubjectsScreen> createState() => _SelectSubjectsScreenState();
}

class _SelectSubjectsScreenState extends State<SelectSubjectsScreen> {
  late final TextEditingController _facultyController;
  late final TextEditingController _courseController;
  late final TextEditingController _fieldController;
  late final TextEditingController _subjectController;

  @override
  void initState() {
    super.initState();

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

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Center(child: DefaultTitle(title: 'Выбрать предмет')),
          const SizedBox(height: 30),
          SizedBox(
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                showDialog(
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
                                    DropdownMenu(
                                      controller: _facultyController,
                                      width: dropDownMenuWidth,
                                      dropdownMenuEntries: [],
                                    ),
                                    const SizedBox(height: 10),
                                    const Text('Курс'),
                                    DropdownMenu(
                                      controller: _courseController,
                                      width: dropDownMenuWidth,
                                      dropdownMenuEntries: [],
                                    ),
                                    const SizedBox(height: 10),
                                    const Text('Направление'),
                                    DropdownMenu(
                                      controller: _fieldController,
                                      width: dropDownMenuWidth,
                                      dropdownMenuEntries: [],
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
        ],
      ),
    );
  }
}
