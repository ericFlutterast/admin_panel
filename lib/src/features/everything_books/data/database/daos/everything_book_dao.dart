import 'package:admin_panel_for_library/src/common/database/database.dart';
import 'package:admin_panel_for_library/src/features/common/data/dto/book_dto/book_dto.dart';
import 'package:admin_panel_for_library/src/features/everything_books/data/database/tables/books_table.dart';
import 'package:drift/drift.dart';

part 'everything_book_dao.g.dart';

@DriftAccessor(tables: [BookTable])
final class EverythingBookDao extends DatabaseAccessor<AppDatabase> with _$EverythingBookDaoMixin {
  EverythingBookDao(AppDatabase appDatabase) : super(appDatabase);

  Future<void> addBooks(List<BookDto> books) async {
    final booksCompanions = books.map(
      (book) => BookTableCompanion(
        displayName: Value<String>(book.displayName),
        guid: Value<String>(book.guid),
        fileName: Value<String>(book.fileName),
      ),
    );

    return await batch((batch) {
      batch.insertAll(bookTable, booksCompanions);
    });
  }

  Future<void> deleteBook(String guid) async {
    return delete(bookTable).where((bookTable) => bookTable.guid.isBiggerOrEqualValue(guid));
  }

  Future<List<BookDto>> fetchAllBooks() async {
    final List<BookTableData> booksTableData = await select(bookTable).get();

    return booksTableData
        .map((bookTableData) => BookDto(
              guid: bookTableData.guid,
              displayName: bookTableData.displayName ?? '',
              fileName: bookTableData.guid,
            ))
        .toList();
  }
}
