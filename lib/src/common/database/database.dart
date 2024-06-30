import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:sqlite3/sqlite3.dart' show sqlite3;
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart' as SQLite;

part 'database.g.dart';

@DriftDatabase(daos: [], tables: [])
final class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await path_provider.getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, 'db.sqlite'));

    if (Platform.isAndroid) {
      SQLite.applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
    }

    final cacheDatabase = (await path_provider.getTemporaryDirectory()).path;
    sqlite3.tempDirectory = cacheDatabase;

    return NativeDatabase.createBackgroundConnection(file);
  });
}
