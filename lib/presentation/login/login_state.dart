part of 'login_view_model.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState() = _LoginState;

  factory LoginState.initial() => LoginState();
}
