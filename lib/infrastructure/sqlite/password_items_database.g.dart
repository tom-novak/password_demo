// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_items_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorPasswordItemsDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$PasswordItemsDatabaseBuilder databaseBuilder(String name) =>
      _$PasswordItemsDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$PasswordItemsDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$PasswordItemsDatabaseBuilder(null);
}

class _$PasswordItemsDatabaseBuilder {
  _$PasswordItemsDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$PasswordItemsDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$PasswordItemsDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<PasswordItemsDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$PasswordItemsDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$PasswordItemsDatabase extends PasswordItemsDatabase {
  _$PasswordItemsDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  PasswordDataDao? _passwordDataDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `PasswordItem` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `name` TEXT NOT NULL, `login` TEXT NOT NULL)');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  PasswordDataDao get passwordDataDao {
    return _passwordDataDaoInstance ??=
        _$PasswordDataDao(database, changeListener);
  }
}

class _$PasswordDataDao extends PasswordDataDao {
  _$PasswordDataDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _passwordItemDtoInsertionAdapter = InsertionAdapter(
            database,
            'PasswordItem',
            (PasswordItemDto item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'login': item.login
                }),
        _passwordItemDtoUpdateAdapter = UpdateAdapter(
            database,
            'PasswordItem',
            ['id'],
            (PasswordItemDto item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'login': item.login
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<PasswordItemDto> _passwordItemDtoInsertionAdapter;

  final UpdateAdapter<PasswordItemDto> _passwordItemDtoUpdateAdapter;

  @override
  Future<void> remove(int itemId) async {
    await _queryAdapter.queryNoReturn('DELETE FROM PasswordItem WHERE id = ?1',
        arguments: [itemId]);
  }

  @override
  Future<PasswordItemDto?> get(int itemId) async {
    return _queryAdapter.query('SELECT * FROM PasswordItem WHERE id = ?1',
        mapper: (Map<String, Object?> row) => PasswordItemDto(
            id: row['id'] as int?,
            name: row['name'] as String,
            login: row['login'] as String),
        arguments: [itemId]);
  }

  @override
  Future<List<PasswordItemDto>> getByOffset(
    int itemsCount,
    int offset,
  ) async {
    return _queryAdapter.queryList(
        'SELECT * FROM PasswordItem WHERE oid NOT IN (SELECT oid FROM PasswordItem ORDER BY id DESC LIMIT ?2) ORDER BY id DESC LIMIT ?1',
        mapper: (Map<String, Object?> row) => PasswordItemDto(id: row['id'] as int?, name: row['name'] as String, login: row['login'] as String),
        arguments: [itemsCount, offset]);
  }

  @override
  Future<void> create(PasswordItemDto item) async {
    await _passwordItemDtoInsertionAdapter.insert(
        item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateItem(PasswordItemDto item) async {
    await _passwordItemDtoUpdateAdapter.update(item, OnConflictStrategy.abort);
  }
}
