import 'dart:async';

import 'package:floor/floor.dart';
import 'package:password_demo/data/password_item_dto.dart';
import 'package:password_demo/data/sqlite/password_data_dao.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'password_items_database.g.dart';

const String kDbKey = 'passwordDemo.db';

@Database(version: 1, entities: [PasswordItemDto])
abstract class PasswordItemsDatabase extends FloorDatabase {
  PasswordDataDao get passwordDataDao;
}
