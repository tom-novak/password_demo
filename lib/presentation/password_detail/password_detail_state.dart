part of 'password_detail_view_model.dart';

@freezed
class PasswordDetailState with _$PasswordDetailState {
  @Assert('itemOrError != null', 'itemOrError cannot be empty')
  @Assert('passwordOrError != null', 'passwordOrError cannot be empty')
  const factory PasswordDetailState({
    @Default(-1) int itemId,
    @Default(false) bool itemLoading,
    @Default(false) bool passwordLoading,
    Option<Either<PasswordItemDto, String>>? itemOrError,
    Option<Either<PasswordItemDto, String>>? passwordOrError,
  }) = _PasswordDetailState;

  factory PasswordDetailState.initial() =>
      PasswordDetailState(itemOrError: none(), passwordOrError: none());
}
