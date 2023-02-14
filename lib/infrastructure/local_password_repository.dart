import 'package:password_demo/data/data.dart';
import 'package:password_demo/data/password_item_dto.dart';
import 'package:password_demo/domain/password_repository.dart';

const int kItemsPerPage = 50;

class LocalPasswordRepository extends PasswordRepository {
  final PasswordDataStore dataStore;

  LocalPasswordRepository({required this.dataStore});

  @override
  Future<void> delete({required int itemId}) async {
    return dataStore.remove(itemId);
  }

  @override
  Future<PasswordItemDto?> get({required int itemId}) async {
    return dataStore.get(itemId);
  }

  @override
  Future<void> save({required PasswordItemDto item}) async {
    dataStore.create(item);
  }

  @override
  Future<void> update({required PasswordItemDto item}) async {
    return dataStore.updateItem(item);
  }

  @override
  Future<void> getPassword({required PasswordItemDto item}) async {
    return Future.value();
  }

  @override
  Future<List<PasswordItemDto>> getPage(
      {required int page, int itemsPerPage = kItemsPerPage}) async {
    return dataStore.getByOffset(itemsPerPage, page * itemsPerPage);
  }
}
