part of 'local_auth_repository.dart';

@freezed
class LocalAuthRepositoryState with _$LocalAuthRepositoryState {
  const factory LocalAuthRepositoryState({
    @Default(SupportState.unknown) SupportState supportState,
    @Default(<BiometricType>[]) List<BiometricType> availableBiometrics,
    @Default(false) bool isAuthenticating,
    @Default(false) bool canCheckBiometrics,
    required Option<Either<String, String>> authorized,
  }) = _LocalAuthRepositoryState;

  factory LocalAuthRepositoryState.initial() =>
      LocalAuthRepositoryState(authorized: none());
}
