import 'dart:math';

import 'package:floor/floor.dart';

@Entity(tableName: 'PasswordItem')
class PasswordItemDto {
  @PrimaryKey(autoGenerate: true)
  int? id;
  final String name;
  final String login;
  final String password;

  PasswordItemDto({
    this.id,
    required this.name,
    required this.login,
    required this.password,
  });

  PasswordItemDto.mock()
      : this(
          id: Random().nextInt(100000),
          name: 'Some name',
          login: 'login@email.cz',
          password: 'SuperSecurePassword',
        );
}
