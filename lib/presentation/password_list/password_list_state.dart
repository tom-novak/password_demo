part of 'password_list_view_model.dart';

@freezed
class PasswordListState with _$PasswordListState {
  @Assert('nextPageOrFailure != null', 'nextPageOrFailure cannot be empty')
  const factory PasswordListState({
    @Default(false) final bool isLoading,
    @Default(1) int page,
    Option<Either<List<PasswordItemDto>, String>>? nextPageOrFailure,
  }) = _PasswordListState;

  factory PasswordListState.initial() => PasswordListState(
        isLoading: false,
        page: 1,
        nextPageOrFailure: none(),
      );
}
