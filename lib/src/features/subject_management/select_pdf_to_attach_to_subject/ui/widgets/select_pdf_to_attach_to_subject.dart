import 'package:admin_panel_for_library/src/features/subject_management/select_pdf_to_attach_to_subject/domain_bloc/link_pdf_to_subject.dart';
import 'package:admin_panel_for_library/src/features/subject_management/select_pdf_to_attach_to_subject/ui/widgets/custom_pointer.dart';
import 'package:admin_panel_for_library/src/features/subject_management/select_pdf_to_attach_to_subject/ui/widgets/helper_selector.dart';
import 'package:admin_panel_for_library/src/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            borderRadius: BorderRadius.all(Radius.circular(30)),
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
                          maxHeight: height * 3,
                          maxWidth: width,
                        ),
                        droppedChild: BlocProvider(
                          create: (context) => LinkPdfToSubjectBloc(),
                          child: const _SelectFromLibrary(),
                        ),
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

final class _SelectFromLibrary extends StatelessWidget {
  const _SelectFromLibrary();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: const BorderRadius.all(Radius.circular(30)),
      child: CustomPaint(
        painter: MarkerPainter(),
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(230, 230, 230, 1),
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          child: BlocBuilder<LinkPdfToSubjectBloc, LinkPdfToSubjectState>(
            builder: (context, state) {
              return CustomScrollView(
                slivers: [
                  const SliverPersistentHeader(
                    pinned: true,
                    floating: true,
                    delegate: _SelectFromLibraryHeader(),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      childCount: 50,
                      (context, index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.4),
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
              );
            },
          ),
        ),
      ),
    );
  }
}

final class _SelectFromLibraryHeader extends SliverPersistentHeaderDelegate {
  const _SelectFromLibraryHeader({
    double maxExtent = 100,
    double minExtent = 100,
  })  : _maxExtent = maxExtent,
        _minExtent = minExtent;

  final double _maxExtent;
  final double _minExtent;

  @override
  double get maxExtent => _maxExtent;

  @override
  double get minExtent => _minExtent;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(230, 230, 230, 1),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        border: Border(
          bottom: BorderSide(
            color: Colors.black.withOpacity(0.1),
            width: 1,
          ),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 16),
          Center(
            child: Text(
              'Библиотека',
              style: UiKitTextStyles.titleStyle,
            ),
          ),
          const Spacer(),
          Expanded(
            flex: 8,
            child: TextField(
              cursorHeight: 20,
              decoration: InputDecoration(
                label: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.search),
                    Text('Найти файл'),
                  ],
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => oldDelegate != this;
}
