import 'package:admin_panel_for_library/src/features/common/di/dependencies_scope.dart';
import 'package:admin_panel_for_library/src/features/subject_management/select_pdf_to_attach_to_subject/data/link_pdf_to_subject_repository/link_pdf_to_subject_repository.dart';
import 'package:admin_panel_for_library/src/features/subject_management/select_pdf_to_attach_to_subject/domain_bloc/link_pdf_to_subject.dart';
import 'package:admin_panel_for_library/src/features/subject_management/select_pdf_to_attach_to_subject/ui/widgets/custom_pointer.dart';
import 'package:admin_panel_for_library/src/features/subject_management/select_pdf_to_attach_to_subject/ui/widgets/helper_selector.dart';
import 'package:admin_panel_for_library/src/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectPdfToAttachToSubjectModal extends StatelessWidget {
  const SelectPdfToAttachToSubjectModal({
    super.key,
    required this.appDependencies,
  });

  final AppDependencies appDependencies;

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
                          create: (context) => LinkPdfToSubjectBloc(
                            linkPdfToSubjectRepository: LinkPdfToSubjectRepository(
                              everythingBooksDataSource: appDependencies.everythingBooksRepository,
                            ),
                          )..add(const LinkPdfToSubjectEvent.fetchAllPdf()),
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
              return state.maybeMap<Widget>(
                loading: (event) {
                  return const Center(child: CircularProgressIndicator());
                },
                success: (state) {
                  return CustomScrollView(
                    slivers: [
                      const SliverPersistentHeader(
                        pinned: false,
                        floating: false,
                        delegate: _TitleHeader(),
                      ),
                      const SliverPersistentHeader(
                        pinned: true,
                        floating: true,
                        delegate: _SearchHeader(),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          childCount: state.books.length,
                          (context, index) {
                            final books = state.books;

                            return Container(
                              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.1),
                                borderRadius: const BorderRadius.all(Radius.circular(16)),
                              ),
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                                  onTap: () {
                                    print(books[index].guid);
                                  },
                                  child: Center(
                                    child: Text(
                                      books[index].displayName,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  );
                },
                orElse: () {
                  return Center(
                    child: Column(
                      children: [
                        const Text('Что-то пошло не так'),
                        ElevatedButton(
                          onPressed: () {
                            context
                                .read<LinkPdfToSubjectBloc>()
                                .add(const LinkPdfToSubjectEvent.fetchAllPdf());
                          },
                          child: const Text('Повторить попытку'),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

final class _TitleHeader extends SliverPersistentHeaderDelegate {
  const _TitleHeader({
    double maxExtent = 50,
    double minExtent = 50,
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
    return Center(
      child: Text(
        'Библиотека',
        style: UiKitTextStyles.titleStyle,
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => oldDelegate != this;
}

final class _SearchHeader extends SliverPersistentHeaderDelegate {
  const _SearchHeader({
    double maxExtent = 70,
    double minExtent = 70,
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
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
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
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => oldDelegate != this;
}
