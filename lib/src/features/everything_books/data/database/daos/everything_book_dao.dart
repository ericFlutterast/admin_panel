import 'package:admin_panel_for_library/src/common/database/database.dart';
import 'package:admin_panel_for_library/src/features/everything_books/data/database/tables/books_table.dart';
import 'package:drift/drift.dart';

part 'everything_book_dao.g.dart';

@DriftAccessor(tables: [BookTable])
final class EverythingBookDao extends DatabaseAccessor<AppDatabase> with _$EverythingBookDaoMixin {
  EverythingBookDao(AppDatabase appDatabase) : super(appDatabase);
}
