import 'package:admin_panel_for_library/src/features/common/data/dto/book_dto/book_dto.dart';
import 'package:admin_panel_for_library/src/features/common/di/dependencies_scope.dart';
import 'package:admin_panel_for_library/src/features/common/widgets/search.dart';
import 'package:admin_panel_for_library/src/features/subject_management/data/services/link_book_service.dart';
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
    required this.subjectId,
  });

  final AppDependencies appDependencies;
  final int subjectId;

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
                              linkBookService: LinkBookService(
                                networkClient: appDependencies.networkClient,
                              ),
                            ),
                          )..add(const LinkPdfToSubjectEvent.fetchAllPdf()),
                          child: _SelectFromLibrary(subjectId: subjectId),
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

final class _SelectFromLibrary extends StatefulWidget {
  const _SelectFromLibrary({
    required this.subjectId,
  });

  final int subjectId;

  @override
  State<_SelectFromLibrary> createState() => _SelectFromLibraryState();
}

class _SelectFromLibraryState extends State<_SelectFromLibrary> {
  late final TextEditingController _searchController;
  final Map<int, bool> _selectedItems = {};

  @override
  void initState() {
    super.initState();

    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();

    super.dispose();
  }

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
                      SliverPersistentHeader(
                        pinned: true,
                        floating: true,
                        delegate: _SearchHeader(
                          controller: _searchController,
                        ),
                      ),
                      Search<BookDto>(
                        controller: CustomSearchController<BookDto>(
                          initialList: state.books,
                          controller: _searchController,
                        ),
                        builder: (context, result) {
                          return SliverList(
                            delegate: SliverChildBuilderDelegate(
                              childCount: result.length,
                              (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                                  child: _BookListItem(
                                    isPressed: _selectedItems[index] ?? false,
                                    displayName: result[index].displayName,
                                    onTap: () {
                                      context.read<LinkPdfToSubjectBloc>().add(
                                            LinkPdfToSubjectEvent.linkPdf(
                                              subjectId: widget.subjectId,
                                              bookId: result[index].guid,
                                            ),
                                          );

                                      setState(() {
                                        if (_selectedItems.containsKey(index)) {
                                          _selectedItems[index] = !_selectedItems[index]!;
                                        } else {
                                          _selectedItems[index] = true;
                                        }
                                      });
                                    },
                                  ),
                                );
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  );
                },
                orElse: () {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Что-то пошло не так'),
                      ElevatedButton(
                        onPressed: () {
                          context.read<LinkPdfToSubjectBloc>().add(const LinkPdfToSubjectEvent.fetchAllPdf());
                        },
                        child: const Text('Повторить попытку'),
                      ),
                    ],
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

  double _calculateScale(double shrinkOffset) {
    return (maxExtent - shrinkOffset) / maxExtent;
  }

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Transform.scale(
      scale: _calculateScale(shrinkOffset),
      child: Center(
        child: Text(
          'Библиотека',
          style: UiKitTextStyles.titleStyle,
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => oldDelegate != this;
}

final class _SearchHeader extends SliverPersistentHeaderDelegate {
  const _SearchHeader({
    this.controller,
    double maxExtent = 70,
    double minExtent = 70,
  })  : _maxExtent = maxExtent,
        _minExtent = minExtent;

  final double _maxExtent;
  final double _minExtent;
  final TextEditingController? controller;

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
        controller: controller,
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

class _BookListItem extends StatelessWidget {
  const _BookListItem({
    required this.isPressed,
    required this.displayName,
    this.onTap,
  });

  final String displayName;
  final bool isPressed;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          onTap: onTap,
          child: Row(
            children: [
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  displayName,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black, style: BorderStyle.solid),
                    borderRadius: const BorderRadius.all(Radius.circular(4))),
                child: Center(
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 200),
                    transitionBuilder: (child, animation) {
                      return ScaleTransition(
                        scale: animation,
                        child: child,
                      );
                    },
                    child: isPressed
                        ? const Icon(
                            Icons.check,
                            size: 16,
                          )
                        : null,
                  ),
                ),
              ),
              const SizedBox(width: 8),
            ],
          ),
        ),
      ),
    );
  }
}
