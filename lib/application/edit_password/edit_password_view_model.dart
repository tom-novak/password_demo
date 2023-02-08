import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:password_demo/domain/password_repository.dart';

part 'edit_password_state.dart';
part 'edit_password_view_model.freezed.dart';

class EditPasswordViewModel extends Cubit<EditPasswordState> {
  final PasswordRepository repository;

  EditPasswordViewModel(
    this.repository,
  ) : super(EditPasswordState.initial());
}
