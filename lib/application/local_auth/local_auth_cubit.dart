import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:local_auth/local_auth.dart';

part 'local_auth_cubit.freezed.dart';
part 'local_auth_cubit_state.dart';

enum SupportState {
  unknown,
  supported,
  unsupported,
}

class LocalAuthCubit extends Cubit<LocalAuthCubitState> {
  late final LocalAuthentication auth;

  LocalAuthCubit({
    required this.auth,
  }) : super(LocalAuthCubitState.initial());

  void init() async {
    auth.isDeviceSupported().then(
      (isSupported) {
        emit(state.copyWith(
            supportState: isSupported
                ? SupportState.supported
                : SupportState.unsupported));
      },
    );
  }

  void lock() async {
    if (!state.isAuthenticating) {
      emit(
        state.copyWith(
          isAuthenticating: false,
          authorized: some(
            left('Not Authorized'),
          ),
        ),
      );
    } else {
      cancelAuthentication();
    }
  }

  void authenticate() async {
    if (!state.isAuthenticating) {
      emit(state.copyWith(isAuthenticating: true, authorized: none()));
      try {
        var authenticated = await auth.authenticate(
          localizedReason: 'Let OS determine authentication method',
          options: const AuthenticationOptions(
            stickyAuth: false,
          ),
        );
        emit(state.copyWith(
            isAuthenticating: false,
            authorized: authenticated
                ? some(left('Authorized'))
                : some(right('Error'))));
      } on PlatformException catch (e) {
        emit(state.copyWith(
            isAuthenticating: false, authorized: some(right(e.message ?? ''))));
      }
    }
  }

  void authenticateWithBiometrics() async {
    if (!state.isAuthenticating) {
      try {
        emit(state.copyWith(isAuthenticating: true, authorized: none()));

        var authenticated = await auth.authenticate(
          localizedReason:
              'Scan your fingerprint (or face or whatever) to authenticate',
          options: const AuthenticationOptions(
            stickyAuth: false,
            biometricOnly: true,
          ),
        );

        emit(state.copyWith(
            isAuthenticating: false,
            authorized: authenticated
                ? some(left('Authorized'))
                : some(right('Not Authorized'))));
      } on PlatformException catch (e) {
        emit(state.copyWith(
            isAuthenticating: false,
            authorized: some(right('Error - ${e.message}'))));
      }
    }
  }

  void cancelAuthentication() async {
    await auth.stopAuthentication();
    emit(state.copyWith(authorized: some(left('Not Authorized'))));
  }

  void getAvailableBiometrics() async {
    try {
      var availableBiometrics = await auth.getAvailableBiometrics();
      emit(state.copyWith(availableBiometrics: availableBiometrics));
    } on PlatformException {
      emit(state.copyWith(availableBiometrics: <BiometricType>[]));
    }
  }

  void checkBiometrics() async {
    try {
      var canCheckBiometrics = await auth.canCheckBiometrics;
      emit(state.copyWith(canCheckBiometrics: canCheckBiometrics));
    } on PlatformException {
      emit(state.copyWith(canCheckBiometrics: false));
    }
  }
}
