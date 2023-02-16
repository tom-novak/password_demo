import 'package:password_demo/domain/domain.dart';

abstract class PasswordDataStore {
  Future<PasswordItemDto?> get(int itemId);

  Future<List<PasswordItemDto>> getByOffset(int itemsCount, int offset);

  Future<void> create(PasswordItemDto item);

  Future<void> updateItem(PasswordItemDto item);

  Future<void> remove(int itemId);
}
