import 'package:drift/drift.dart';

class BookTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get guid => text()();

  TextColumn get displayName => text().nullable()();

  TextColumn get fileName => text().nullable()();
}
