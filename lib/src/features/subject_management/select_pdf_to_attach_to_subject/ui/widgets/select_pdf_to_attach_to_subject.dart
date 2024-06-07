import 'package:admin_panel_for_library/src/features/subject_management/select_pdf_to_attach_to_subject/ui/widgets/helper_selector.dart';
import 'package:admin_panel_for_library/src/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';

class SelectPdfToAttachToSubjectModal extends StatelessWidget {
  const SelectPdfToAttachToSubjectModal({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.25;
    final width = MediaQuery.of(context).size.width * 0.3;

    return Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
          padding: const EdgeInsets.all(16),
          height: height,
          width: width,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(30)),
          ),
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Center(
                      child: Text(
                        'Прикрепить учебники или статьи',
                        style: UiKitTextStyles.titleStyle,
                      ),
                    ),
                    const SizedBox(height: 25),
                    SizedBox(
                      height: 55,
                      width: double.infinity,
                      child: HelperSelector(
                        droppedChildConstraints: BoxConstraints(
                          maxHeight: height * 1.5,
                          maxWidth: width * 1.5,
                        ),
                        droppedChild: const _SelectFromLibrary(),
                        child: Text(
                          'Выбрать из библиотеки',
                          style: UiKitTextStyles.buttonStyle,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      height: 55,
                      width: double.infinity,
                      child: HelperSelector(
                        droppedChild: Container(
                          height: 200,
                          width: width,
                          color: Colors.green,
                        ),
                        child: Text(
                          'Загрузить и прикрепить',
                          style: UiKitTextStyles.buttonStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SelectFromLibrary extends StatelessWidget {
  const _SelectFromLibrary();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: const BorderRadius.all(Radius.circular(30)),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          border: Border.all(
            color: Colors.black.withOpacity(0.7),
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(
                child: SizedBox(height: 16),
              ),
              SliverToBoxAdapter(
                child: Center(
                  child: Text(
                    'Библиотека',
                    style: UiKitTextStyles.titleStyle,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Divider(color: Colors.black.withOpacity(0.1)),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: 10,
                  (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.2),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(16),
                        ),
                      ),
                      child: const Center(
                        child: Text('Демидович.pdf'),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
