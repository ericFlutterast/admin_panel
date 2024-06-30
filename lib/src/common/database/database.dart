import 'package:admin_panel_for_library/src/features/everything_books/data/database/daos/everything_book_dao.dart';
import 'package:admin_panel_for_library/src/features/everything_books/data/database/tables/books_table.dart';
import 'package:drift/drift.dart';
import 'package:drift/wasm.dart';

part 'database.g.dart';

@DriftDatabase(daos: [EverythingBookDao], tables: [BookTable])
final class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  //factory AppDatabase() => AppDatabase._();

  @override
  int get schemaVersion => 1;
}

DatabaseConnection _openConnection() {
  return DatabaseConnection.delayed(Future(() async {
    final result = await WasmDatabase.open(
      databaseName: 'admin_panel_database',
      sqlite3Uri: Uri.parse('sqlite3.wasm'),
      driftWorkerUri: Uri.parse('drift_worker.js'),
    );

    if (result.missingFeatures.isNotEmpty) {
      print('Using ${result.chosenImplementation} due to missing browser '
          'features: ${result.missingFeatures}');
    }

    // final cacheDatabase = (await path_provider.getTemporaryDirectory()).path;
    //sqlite3.tempDirectory = cacheDatabase;

    return result.resolvedExecutor;
  }));
}
