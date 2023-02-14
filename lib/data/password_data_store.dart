import 'package:password_demo/data/password_item_dto.dart';

abstract class PasswordDataStore {
  Future<PasswordItemDto?> get(int itemId);

  Future<List<PasswordItemDto>> getByOffset(int itemsCount, int offset);

  Future<void> save(PasswordItemDto item);

  Future<void> deleteItem(PasswordItemDto item);
}
