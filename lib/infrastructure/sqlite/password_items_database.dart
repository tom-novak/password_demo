import 'dart:async';

import 'package:floor/floor.dart';
import 'package:password_demo/domain/domain.dart';
import 'package:password_demo/infrastructure/sqlite/password_data_dao.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'password_items_database.g.dart';

const String kDbKey = 'passwordDemo.db';

@Database(version: 1, entities: [PasswordItemDto])
abstract class PasswordItemsDatabase extends FloorDatabase {
  PasswordDataDao get passwordDataDao;
}
