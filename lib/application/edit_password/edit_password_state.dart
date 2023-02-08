part of 'edit_password_view_model.dart';

@freezed
class EditPasswordState with _$EditPasswordState {
  const factory EditPasswordState({
    required String name,
  }) = _EditPasswordState;

  factory EditPasswordState.initial() => const EditPasswordState(name: '');
}
