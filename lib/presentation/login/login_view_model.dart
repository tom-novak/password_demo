import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.dart';
part 'login_view_model.freezed.dart';

class LoginViewModel extends Cubit<LoginState> {
  LoginViewModel() : super(LoginState.initial());
}
