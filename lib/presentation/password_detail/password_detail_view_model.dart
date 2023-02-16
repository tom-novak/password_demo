import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:password_demo/domain/password_item_dto.dart';
import 'package:password_demo/domain/password_repository.dart';

part 'password_detail_state.dart';
part 'password_detail_view_model.freezed.dart';

class PasswordDetailViewModel extends Cubit<PasswordDetailState> {
  final PasswordRepository repository;

  PasswordDetailViewModel({
    required this.repository,
  }) : super(PasswordDetailState.initial());

  void setItemId(int itemId) async {
    if (itemId >= 0) {
      emit(state.copyWith(itemId: itemId));
      load(itemId);
    }
  }

  void load(int itemId) async {
    emit(state.copyWith(itemLoading: true));
    var result = await repository.get(itemId: itemId);
    emit(
      state.copyWith(
        itemLoading: false,
        itemOrError: (result != null ? some(left(result)) : none()),
      ),
    );
  }
}
