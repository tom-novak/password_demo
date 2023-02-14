import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:password_demo/data/password_item_dto.dart';
import 'package:password_demo/domain/password_repository.dart';

part 'edit_password_state.dart';
part 'edit_password_view_model.freezed.dart';

enum ItemProcessingState {
  saved,
  deleted,
  updated,
  error,
}

class EditPasswordViewModel extends Cubit<EditPasswordState> {
  final PasswordRepository repository;

  EditPasswordViewModel({
    required this.repository,
  }) : super(EditPasswordState.initial());

  void setItemId(int itemId) async {
    if (itemId >= 0) {
      emit(state.copyWith(itemId: itemId));
      load(itemId);
    }
  }

  void onSave(PasswordItemDto item) async {
    emit(state.copyWith(isProcessing: true));
    if (state.itemId >= 0) {
      await repository.update(item: item);
    } else {
      await repository.save(item: item);
    }
    emit(state.copyWith(
        stateOrError: some(
          left(ItemProcessingState.saved),
        ),
        isProcessing: false));
  }

  void onDelete(int itemId) async {
    emit(state.copyWith(isProcessing: true));
    await repository.delete(itemId: itemId);
    emit(
      state.copyWith(
        isProcessing: false,
        stateOrError: some(
          left(ItemProcessingState.deleted),
        ),
      ),
    );
  }

  void load(int itemId) async {
    emit(state.copyWith(isProcessing: true));
    var result = await repository.get(itemId: itemId);
    emit(
      state.copyWith(
        isProcessing: false,
        itemOrError: (result != null ? some(left(result)) : none()),
      ),
    );
  }
}
