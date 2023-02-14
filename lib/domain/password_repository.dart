import 'package:password_demo/data/password_item_dto.dart';
import 'package:password_demo/infrastructure/local_password_repository.dart';

abstract class PasswordRepository {
  Future<void> get({required int itemId});

  Future<List<PasswordItemDto>> getPage({required int page, int itemsPerPage = kItemsPerPage});

  Future<void> save({required PasswordItemDto item});

  Future<void> delete({required int itemId});

  Future<void> update({required PasswordItemDto item});

  Future<void> getPassword({required PasswordItemDto item});
}
