part of 'local_auth_cubit.dart';

@freezed
class LocalAuthCubitState with _$LocalAuthCubitState {
  const factory LocalAuthCubitState({
    @Default(SupportState.unknown) SupportState supportState,
    @Default(<BiometricType>[]) List<BiometricType> availableBiometrics,
    @Default(false) bool isAuthenticating,
    @Default(false) bool canCheckBiometrics,
    required Option<Either<String, String>> authorized,
  }) = _AuthCubitState;

  factory LocalAuthCubitState.initial() =>
      LocalAuthCubitState(authorized: none());
}
