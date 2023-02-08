import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:password_demo/domain/password_repository.dart';

part 'password_list_state.dart';
part 'password_list_view_model.freezed.dart';

class PasswordListViewModel extends Cubit<PasswordListState> {
  final PasswordRepository repository;

  PasswordListViewModel(
    this.repository,
  ) : super(PasswordListState.inital());
}
