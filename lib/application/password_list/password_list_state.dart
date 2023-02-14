part of 'password_list_view_model.dart';

@freezed
class PasswordListState with _$PasswordListState {
  const factory PasswordListState({
    @Default(false) final bool isLoading,
    @Default(0) int page,
    Either<PasswordItemDto, String>? itemsOrFailure,
  }) = _PasswordListState;

  factory PasswordListState.inital() => const PasswordListState(
        isLoading: false,
        page: 0,
        itemsOrFailure: null,
      );
}
