import 'package:admin_panel_for_library/src/features/common/widgets/default_title.dart';
import 'package:admin_panel_for_library/src/features/everything_books/domain_bloc/blocs/all_books_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EverythingBooksScreen extends StatelessWidget {
  const EverythingBooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AllBooks, AllBooksState>(
        listener: (context, state) {
          state.mapOrNull(
            error: (state) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.errorMsg)),
              );
            },
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const Center(child: DefaultTitle(title: 'Библиотека')),
              const SizedBox(height: 25),
              Expanded(
                child: CustomScrollView(
                  physics: const BouncingScrollPhysics(),
                  slivers: [
                    //const SliverToBoxAdapter(),
                    SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          BlocBuilder<AllBooks, AllBooksState>(
                            builder: (context, state) {
                              return state.maybeMap(
                                loading: (state) {
                                  return const Center(
                                    child: SizedBox(
                                      height: 30,
                                      width: 30,
                                      child: CircularProgressIndicator(color: Colors.pink),
                                    ),
                                  );
                                },
                                successful: (state) {
                                  return Column(
                                    children: [
                                      for (final (index, item) in state.items.indexed)
                                        _DisplayFileItem(
                                          bookId: item.guid,
                                          displayName: item.displayName,
                                          index: index + 1,
                                        )
                                    ],
                                  );
                                },
                                orElse: () {
                                  return const Text('Библиотека пуста');
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    )
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

class _DisplayFileItem extends StatelessWidget {
  const _DisplayFileItem({
    required this.displayName,
    required this.bookId,
    this.index,
  });

  final String bookId;
  final String displayName;
  final int? index;

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
    );

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: Colors.black.withOpacity(.1)),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (index != null) ...[
            Text('${index.toString()}.', style: textStyle),
            const SizedBox(width: 8),
          ],
          Expanded(
            child: Text(
              displayName,
              style: textStyle,
            ),
          ),
          IconButton(
            onPressed: () {
              context.read<AllBooks>().add(AllBooksEvents.deleteBook(bookId: bookId));
              context.read<AllBooks>().add(const AllBooksEvents.fetchBooks());
            },
            icon: const Icon(
              Icons.restore_from_trash,
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
