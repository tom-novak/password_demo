import 'package:floor/floor.dart';
import 'package:password_demo/data/data.dart';
import 'package:password_demo/data/password_item_dto.dart';

@dao
abstract class PasswordDataDao extends PasswordDataStore {
  @override
  @insert
  Future<void> create(PasswordItemDto item);

  @override
  @update
  Future<void> updateItem(PasswordItemDto item);

  @override
  @Query('DELETE FROM PasswordItem WHERE id = :itemId')
  Future<void> remove(int itemId);

  @override
  @Query('SELECT * FROM PasswordItem WHERE id = :itemId')
  Future<PasswordItemDto?> get(int itemId);

  @override
  @Query(
      'SELECT * FROM PasswordItem WHERE oid NOT IN (SELECT oid FROM PasswordItem ORDER BY id DESC LIMIT :offset) ORDER BY id DESC LIMIT :itemsCount')
  Future<List<PasswordItemDto>> getByOffset(int itemsCount, int offset);
}
