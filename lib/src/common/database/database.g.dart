// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $BookTableTable extends BookTable
    with TableInfo<$BookTableTable, BookTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BookTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _guidMeta = const VerificationMeta('guid');
  @override
  late final GeneratedColumn<String> guid = GeneratedColumn<String>(
      'guid', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _displayNameMeta =
      const VerificationMeta('displayName');
  @override
  late final GeneratedColumn<String> displayName = GeneratedColumn<String>(
      'display_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _fileNameMeta =
      const VerificationMeta('fileName');
  @override
  late final GeneratedColumn<String> fileName = GeneratedColumn<String>(
      'file_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, guid, displayName, fileName];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'book_table';
  @override
  VerificationContext validateIntegrity(Insertable<BookTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('guid')) {
      context.handle(
          _guidMeta, guid.isAcceptableOrUnknown(data['guid']!, _guidMeta));
    } else if (isInserting) {
      context.missing(_guidMeta);
    }
    if (data.containsKey('display_name')) {
      context.handle(
          _displayNameMeta,
          displayName.isAcceptableOrUnknown(
              data['display_name']!, _displayNameMeta));
    }
    if (data.containsKey('file_name')) {
      context.handle(_fileNameMeta,
          fileName.isAcceptableOrUnknown(data['file_name']!, _fileNameMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BookTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BookTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      guid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}guid'])!,
      displayName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}display_name']),
      fileName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}file_name']),
    );
  }

  @override
  $BookTableTable createAlias(String alias) {
    return $BookTableTable(attachedDatabase, alias);
  }
}

class BookTableData extends DataClass implements Insertable<BookTableData> {
  final int id;
  final String guid;
  final String? displayName;
  final String? fileName;
  const BookTableData(
      {required this.id, required this.guid, this.displayName, this.fileName});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['guid'] = Variable<String>(guid);
    if (!nullToAbsent || displayName != null) {
      map['display_name'] = Variable<String>(displayName);
    }
    if (!nullToAbsent || fileName != null) {
      map['file_name'] = Variable<String>(fileName);
    }
    return map;
  }

  BookTableCompanion toCompanion(bool nullToAbsent) {
    return BookTableCompanion(
      id: Value(id),
      guid: Value(guid),
      displayName: displayName == null && nullToAbsent
          ? const Value.absent()
          : Value(displayName),
      fileName: fileName == null && nullToAbsent
          ? const Value.absent()
          : Value(fileName),
    );
  }

  factory BookTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BookTableData(
      id: serializer.fromJson<int>(json['id']),
      guid: serializer.fromJson<String>(json['guid']),
      displayName: serializer.fromJson<String?>(json['displayName']),
      fileName: serializer.fromJson<String?>(json['fileName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'guid': serializer.toJson<String>(guid),
      'displayName': serializer.toJson<String?>(displayName),
      'fileName': serializer.toJson<String?>(fileName),
    };
  }

  BookTableData copyWith(
          {int? id,
          String? guid,
          Value<String?> displayName = const Value.absent(),
          Value<String?> fileName = const Value.absent()}) =>
      BookTableData(
        id: id ?? this.id,
        guid: guid ?? this.guid,
        displayName: displayName.present ? displayName.value : this.displayName,
        fileName: fileName.present ? fileName.value : this.fileName,
      );
  @override
  String toString() {
    return (StringBuffer('BookTableData(')
          ..write('id: $id, ')
          ..write('guid: $guid, ')
          ..write('displayName: $displayName, ')
          ..write('fileName: $fileName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, guid, displayName, fileName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BookTableData &&
          other.id == this.id &&
          other.guid == this.guid &&
          other.displayName == this.displayName &&
          other.fileName == this.fileName);
}

class BookTableCompanion extends UpdateCompanion<BookTableData> {
  final Value<int> id;
  final Value<String> guid;
  final Value<String?> displayName;
  final Value<String?> fileName;
  const BookTableCompanion({
    this.id = const Value.absent(),
    this.guid = const Value.absent(),
    this.displayName = const Value.absent(),
    this.fileName = const Value.absent(),
  });
  BookTableCompanion.insert({
    this.id = const Value.absent(),
    required String guid,
    this.displayName = const Value.absent(),
    this.fileName = const Value.absent(),
  }) : guid = Value(guid);
  static Insertable<BookTableData> custom({
    Expression<int>? id,
    Expression<String>? guid,
    Expression<String>? displayName,
    Expression<String>? fileName,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (guid != null) 'guid': guid,
      if (displayName != null) 'display_name': displayName,
      if (fileName != null) 'file_name': fileName,
    });
  }

  BookTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? guid,
      Value<String?>? displayName,
      Value<String?>? fileName}) {
    return BookTableCompanion(
      id: id ?? this.id,
      guid: guid ?? this.guid,
      displayName: displayName ?? this.displayName,
      fileName: fileName ?? this.fileName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (guid.present) {
      map['guid'] = Variable<String>(guid.value);
    }
    if (displayName.present) {
      map['display_name'] = Variable<String>(displayName.value);
    }
    if (fileName.present) {
      map['file_name'] = Variable<String>(fileName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BookTableCompanion(')
          ..write('id: $id, ')
          ..write('guid: $guid, ')
          ..write('displayName: $displayName, ')
          ..write('fileName: $fileName')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $BookTableTable bookTable = $BookTableTable(this);
  late final EverythingBookDao everythingBookDao =
      EverythingBookDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [bookTable];
}
