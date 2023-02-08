import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:password_demo/domain/password_repository.dart';

part 'password_detail_state.dart';
part 'password_detail_view_model.freezed.dart';

class PasswordDetailViewModel extends Cubit<PasswordDetailState> {
  final PasswordRepository repository;

  PasswordDetailViewModel(
    this.repository,
  ) : super(PasswordDetailState.initial());
}
