// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocalAuthCubitState {
  SupportState get supportState => throw _privateConstructorUsedError;
  List<BiometricType> get availableBiometrics =>
      throw _privateConstructorUsedError;
  bool get isAuthenticating => throw _privateConstructorUsedError;
  bool get canCheckBiometrics => throw _privateConstructorUsedError;
  Option<Either<String, String>> get authorized =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocalAuthCubitStateCopyWith<LocalAuthCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalAuthCubitStateCopyWith<$Res> {
  factory $LocalAuthCubitStateCopyWith(
          LocalAuthCubitState value, $Res Function(LocalAuthCubitState) then) =
      _$LocalAuthCubitStateCopyWithImpl<$Res, LocalAuthCubitState>;
  @useResult
  $Res call(
      {SupportState supportState,
      List<BiometricType> availableBiometrics,
      bool isAuthenticating,
      bool canCheckBiometrics,
      Option<Either<String, String>> authorized});
}

/// @nodoc
class _$LocalAuthCubitStateCopyWithImpl<$Res, $Val extends LocalAuthCubitState>
    implements $LocalAuthCubitStateCopyWith<$Res> {
  _$LocalAuthCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supportState = null,
    Object? availableBiometrics = null,
    Object? isAuthenticating = null,
    Object? canCheckBiometrics = null,
    Object? authorized = null,
  }) {
    return _then(_value.copyWith(
      supportState: null == supportState
          ? _value.supportState
          : supportState // ignore: cast_nullable_to_non_nullable
              as SupportState,
      availableBiometrics: null == availableBiometrics
          ? _value.availableBiometrics
          : availableBiometrics // ignore: cast_nullable_to_non_nullable
              as List<BiometricType>,
      isAuthenticating: null == isAuthenticating
          ? _value.isAuthenticating
          : isAuthenticating // ignore: cast_nullable_to_non_nullable
              as bool,
      canCheckBiometrics: null == canCheckBiometrics
          ? _value.canCheckBiometrics
          : canCheckBiometrics // ignore: cast_nullable_to_non_nullable
              as bool,
      authorized: null == authorized
          ? _value.authorized
          : authorized // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, String>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthCubitStateCopyWith<$Res>
    implements $LocalAuthCubitStateCopyWith<$Res> {
  factory _$$_AuthCubitStateCopyWith(
          _$_AuthCubitState value, $Res Function(_$_AuthCubitState) then) =
      __$$_AuthCubitStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SupportState supportState,
      List<BiometricType> availableBiometrics,
      bool isAuthenticating,
      bool canCheckBiometrics,
      Option<Either<String, String>> authorized});
}

/// @nodoc
class __$$_AuthCubitStateCopyWithImpl<$Res>
    extends _$LocalAuthCubitStateCopyWithImpl<$Res, _$_AuthCubitState>
    implements _$$_AuthCubitStateCopyWith<$Res> {
  __$$_AuthCubitStateCopyWithImpl(
      _$_AuthCubitState _value, $Res Function(_$_AuthCubitState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supportState = null,
    Object? availableBiometrics = null,
    Object? isAuthenticating = null,
    Object? canCheckBiometrics = null,
    Object? authorized = null,
  }) {
    return _then(_$_AuthCubitState(
      supportState: null == supportState
          ? _value.supportState
          : supportState // ignore: cast_nullable_to_non_nullable
              as SupportState,
      availableBiometrics: null == availableBiometrics
          ? _value._availableBiometrics
          : availableBiometrics // ignore: cast_nullable_to_non_nullable
              as List<BiometricType>,
      isAuthenticating: null == isAuthenticating
          ? _value.isAuthenticating
          : isAuthenticating // ignore: cast_nullable_to_non_nullable
              as bool,
      canCheckBiometrics: null == canCheckBiometrics
          ? _value.canCheckBiometrics
          : canCheckBiometrics // ignore: cast_nullable_to_non_nullable
              as bool,
      authorized: null == authorized
          ? _value.authorized
          : authorized // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, String>>,
    ));
  }
}

/// @nodoc

class _$_AuthCubitState implements _AuthCubitState {
  const _$_AuthCubitState(
      {this.supportState = SupportState.unknown,
      final List<BiometricType> availableBiometrics = const <BiometricType>[],
      this.isAuthenticating = false,
      this.canCheckBiometrics = false,
      required this.authorized})
      : _availableBiometrics = availableBiometrics;

  @override
  @JsonKey()
  final SupportState supportState;
  final List<BiometricType> _availableBiometrics;
  @override
  @JsonKey()
  List<BiometricType> get availableBiometrics {
    if (_availableBiometrics is EqualUnmodifiableListView)
      return _availableBiometrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableBiometrics);
  }

  @override
  @JsonKey()
  final bool isAuthenticating;
  @override
  @JsonKey()
  final bool canCheckBiometrics;
  @override
  final Option<Either<String, String>> authorized;

  @override
  String toString() {
    return 'LocalAuthCubitState(supportState: $supportState, availableBiometrics: $availableBiometrics, isAuthenticating: $isAuthenticating, canCheckBiometrics: $canCheckBiometrics, authorized: $authorized)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthCubitState &&
            (identical(other.supportState, supportState) ||
                other.supportState == supportState) &&
            const DeepCollectionEquality()
                .equals(other._availableBiometrics, _availableBiometrics) &&
            (identical(other.isAuthenticating, isAuthenticating) ||
                other.isAuthenticating == isAuthenticating) &&
            (identical(other.canCheckBiometrics, canCheckBiometrics) ||
                other.canCheckBiometrics == canCheckBiometrics) &&
            (identical(other.authorized, authorized) ||
                other.authorized == authorized));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      supportState,
      const DeepCollectionEquality().hash(_availableBiometrics),
      isAuthenticating,
      canCheckBiometrics,
      authorized);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthCubitStateCopyWith<_$_AuthCubitState> get copyWith =>
      __$$_AuthCubitStateCopyWithImpl<_$_AuthCubitState>(this, _$identity);
}

abstract class _AuthCubitState implements LocalAuthCubitState {
  const factory _AuthCubitState(
          {final SupportState supportState,
          final List<BiometricType> availableBiometrics,
          final bool isAuthenticating,
          final bool canCheckBiometrics,
          required final Option<Either<String, String>> authorized}) =
      _$_AuthCubitState;

  @override
  SupportState get supportState;
  @override
  List<BiometricType> get availableBiometrics;
  @override
  bool get isAuthenticating;
  @override
  bool get canCheckBiometrics;
  @override
  Option<Either<String, String>> get authorized;
  @override
  @JsonKey(ignore: true)
  _$$_AuthCubitStateCopyWith<_$_AuthCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}
