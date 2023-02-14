import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:password_demo/data/password_item_dto.dart';
import 'package:password_demo/domain/password_repository.dart';

part 'password_list_state.dart';
part 'password_list_view_model.freezed.dart';

class PasswordListViewModel extends Cubit<PasswordListState> {
  final PasswordRepository repository;

  PasswordListViewModel({
    required this.repository,
  }) : super(PasswordListState.inital());

  void loadNext() async {
    emit(state.copyWith(isLoading: true, page: state.page + 1));

    var result = await repository.getPage(page: state.page);
  }
}
