import 'package:password_demo/domain/domain.dart';

abstract class PasswordRepository {
  Future<PasswordItemDto?> get({required int itemId});

  Future<List<PasswordItemDto>> getPage(
      {required int page, int itemsPerPage = kItemsPerPage});

  Future<void> save({required PasswordItemDto item});

  Future<void> delete({required int itemId});

  Future<void> update({required PasswordItemDto item});
}
