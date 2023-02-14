import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:password_demo/data/data.dart';
import 'package:password_demo/data/password_item_dto.dart';
import 'package:password_demo/domain/password_repository.dart';

const int kItemsPerPage = 50;

class LocalPasswordRepository extends PasswordRepository {
  final PasswordDataStore dataStore;
  final FlutterSecureStorage secureStorage;

  LocalPasswordRepository({
    required this.dataStore,
    required this.secureStorage,
  });

  @override
  Future<void> delete({required int itemId}) async {
    var item = await dataStore.get(itemId);
    if (item != null) {
      await secureStorage.delete(key: item.name);
    }
    return dataStore.remove(itemId);
  }

  @override
  Future<PasswordItemDto?> get({required int itemId}) async {
    var item = await dataStore.get(itemId);
    if (item != null) {
      item.password = await secureStorage.read(key: item.name);
    }
    return item;
  }

  @override
  Future<void> save({required PasswordItemDto item}) async {
    await dataStore.create(item);
    await secureStorage.write(key: item.name, value: item.password);
  }

  @override
  Future<void> update({required PasswordItemDto item}) async {
    await dataStore.updateItem(item);
    await secureStorage.write(key: item.name, value: item.password);
  }

  @override
  Future<List<PasswordItemDto>> getPage(
      {required int page, int itemsPerPage = kItemsPerPage}) async {
    return dataStore.getByOffset(itemsPerPage, page * itemsPerPage);
  }
}
