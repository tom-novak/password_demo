part of 'app_cubit.dart';

@freezed
class AppState with _$AppState {
  @Assert('noneOrDb != null', 'noneOrDb cannot be empty')
  factory AppState({
    Option<Either<PasswordItemsDatabase, String>>? noneOrDb,
  }) = _AppState;

  factory AppState.initial() => AppState(
        noneOrDb: none(),
      );
}
