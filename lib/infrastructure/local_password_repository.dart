import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:password_demo/data/data.dart';
import 'package:password_demo/data/password_item_dto.dart';
import 'package:password_demo/domain/password_repository.dart';

const int kItemsPerPage = 10;

class LocalPasswordRepository extends PasswordRepository {
  final PasswordDataStore _dataStore;
  final FlutterSecureStorage _secureStorage;

  LocalPasswordRepository({
    required PasswordDataStore dataStore,
    required FlutterSecureStorage secureStorage,
  })  : _secureStorage = secureStorage,
        _dataStore = dataStore;

  @override
  Future<void> delete({required int itemId}) async {
    var item = await _dataStore.get(itemId);
    if (item != null) {
      await _secureStorage.delete(key: item.name);
    }
    return _dataStore.remove(itemId);
  }

  @override
  Future<PasswordItemDto?> get({required int itemId}) async {
    var item = await _dataStore.get(itemId);
    if (item != null) {
      item.password = await _secureStorage.read(key: item.name);
    }
    return item;
  }

  @override
  Future<void> save({required PasswordItemDto item}) async {
    await _dataStore.create(item);
    await _secureStorage.write(key: item.name, value: item.password);
  }

  @override
  Future<void> update({required PasswordItemDto item}) async {
    await _dataStore.updateItem(item);
    await _secureStorage.write(key: item.name, value: item.password);
  }

  @override
  Future<List<PasswordItemDto>> getPage(
      {required int page, int itemsPerPage = kItemsPerPage}) async {
    return _dataStore.getByOffset(itemsPerPage, (page - 1) * itemsPerPage);
  }
}
