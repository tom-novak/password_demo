import 'package:floor/floor.dart';
import 'package:password_demo/data/data.dart';
import 'package:password_demo/data/password_item_dto.dart';

@dao
abstract class PasswordDataDao extends PasswordDataStore {
  @override
  @insert
  Future<void> save(PasswordItemDto item);

  @override
  @delete
  Future<void> deleteItem(PasswordItemDto item);

  @override
  @Query('SELECT * FROM PasswordItem WHERE id = :itemId')
  Future<PasswordItemDto?> get(int itemId);

  @override
  @Query(
      'SELECT * FROM PasswordItem WHERE oid NOT IN (SELECT oid FROM PasswordItem ORDER BY id ASC LIMIT :offset) ORDER BY id ASC LIMIT :itemsCount')
  Future<List<PasswordItemDto>> getByOffset(int itemsCount, int offset);
}
