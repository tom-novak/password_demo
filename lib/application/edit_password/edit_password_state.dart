part of 'edit_password_view_model.dart';

@freezed
class EditPasswordState with _$EditPasswordState {
  @Assert('stateOrError != null', 'stateOrError cannot be empty')
  @Assert('itemOrError != null', 'itemOrError cannot be empty')
  @Assert('passwordOrError != null', 'passwordOrError cannot be empty')
  const factory EditPasswordState({
    @Default(-1) int itemId,
    @Default(false) bool isProcessing,
    @Default(false) bool passwordLoading,
    Option<Either<ItemProcessingState, String>>? stateOrError,
    Option<Either<PasswordItemDto, String>>? passwordOrError,
    Option<Either<PasswordItemDto, String>>? itemOrError,
  }) = _EditPasswordState;

  factory EditPasswordState.initial() =>
      EditPasswordState(stateOrError: none(), itemOrError: none(), passwordOrError: none());
}
