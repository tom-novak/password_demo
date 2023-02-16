// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_detail_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PasswordDetailState {
  int get itemId => throw _privateConstructorUsedError;
  bool get itemLoading => throw _privateConstructorUsedError;
  bool get passwordLoading => throw _privateConstructorUsedError;
  Option<Either<PasswordItemDto, String>>? get itemOrError =>
      throw _privateConstructorUsedError;
  Option<Either<PasswordItemDto, String>>? get passwordOrError =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasswordDetailStateCopyWith<PasswordDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordDetailStateCopyWith<$Res> {
  factory $PasswordDetailStateCopyWith(
          PasswordDetailState value, $Res Function(PasswordDetailState) then) =
      _$PasswordDetailStateCopyWithImpl<$Res, PasswordDetailState>;
  @useResult
  $Res call(
      {int itemId,
      bool itemLoading,
      bool passwordLoading,
      Option<Either<PasswordItemDto, String>>? itemOrError,
      Option<Either<PasswordItemDto, String>>? passwordOrError});
}

/// @nodoc
class _$PasswordDetailStateCopyWithImpl<$Res, $Val extends PasswordDetailState>
    implements $PasswordDetailStateCopyWith<$Res> {
  _$PasswordDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? itemLoading = null,
    Object? passwordLoading = null,
    Object? itemOrError = freezed,
    Object? passwordOrError = freezed,
  }) {
    return _then(_value.copyWith(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      itemLoading: null == itemLoading
          ? _value.itemLoading
          : itemLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordLoading: null == passwordLoading
          ? _value.passwordLoading
          : passwordLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      itemOrError: freezed == itemOrError
          ? _value.itemOrError
          : itemOrError // ignore: cast_nullable_to_non_nullable
              as Option<Either<PasswordItemDto, String>>?,
      passwordOrError: freezed == passwordOrError
          ? _value.passwordOrError
          : passwordOrError // ignore: cast_nullable_to_non_nullable
              as Option<Either<PasswordItemDto, String>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PasswordDetailStateCopyWith<$Res>
    implements $PasswordDetailStateCopyWith<$Res> {
  factory _$$_PasswordDetailStateCopyWith(_$_PasswordDetailState value,
          $Res Function(_$_PasswordDetailState) then) =
      __$$_PasswordDetailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int itemId,
      bool itemLoading,
      bool passwordLoading,
      Option<Either<PasswordItemDto, String>>? itemOrError,
      Option<Either<PasswordItemDto, String>>? passwordOrError});
}

/// @nodoc
class __$$_PasswordDetailStateCopyWithImpl<$Res>
    extends _$PasswordDetailStateCopyWithImpl<$Res, _$_PasswordDetailState>
    implements _$$_PasswordDetailStateCopyWith<$Res> {
  __$$_PasswordDetailStateCopyWithImpl(_$_PasswordDetailState _value,
      $Res Function(_$_PasswordDetailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? itemLoading = null,
    Object? passwordLoading = null,
    Object? itemOrError = freezed,
    Object? passwordOrError = freezed,
  }) {
    return _then(_$_PasswordDetailState(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      itemLoading: null == itemLoading
          ? _value.itemLoading
          : itemLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordLoading: null == passwordLoading
          ? _value.passwordLoading
          : passwordLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      itemOrError: freezed == itemOrError
          ? _value.itemOrError
          : itemOrError // ignore: cast_nullable_to_non_nullable
              as Option<Either<PasswordItemDto, String>>?,
      passwordOrError: freezed == passwordOrError
          ? _value.passwordOrError
          : passwordOrError // ignore: cast_nullable_to_non_nullable
              as Option<Either<PasswordItemDto, String>>?,
    ));
  }
}

/// @nodoc

class _$_PasswordDetailState implements _PasswordDetailState {
  const _$_PasswordDetailState(
      {this.itemId = -1,
      this.itemLoading = false,
      this.passwordLoading = false,
      this.itemOrError,
      this.passwordOrError})
      : assert(itemOrError != null, 'itemOrError cannot be empty'),
        assert(passwordOrError != null, 'passwordOrError cannot be empty');

  @override
  @JsonKey()
  final int itemId;
  @override
  @JsonKey()
  final bool itemLoading;
  @override
  @JsonKey()
  final bool passwordLoading;
  @override
  final Option<Either<PasswordItemDto, String>>? itemOrError;
  @override
  final Option<Either<PasswordItemDto, String>>? passwordOrError;

  @override
  String toString() {
    return 'PasswordDetailState(itemId: $itemId, itemLoading: $itemLoading, passwordLoading: $passwordLoading, itemOrError: $itemOrError, passwordOrError: $passwordOrError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordDetailState &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.itemLoading, itemLoading) ||
                other.itemLoading == itemLoading) &&
            (identical(other.passwordLoading, passwordLoading) ||
                other.passwordLoading == passwordLoading) &&
            (identical(other.itemOrError, itemOrError) ||
                other.itemOrError == itemOrError) &&
            (identical(other.passwordOrError, passwordOrError) ||
                other.passwordOrError == passwordOrError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itemId, itemLoading,
      passwordLoading, itemOrError, passwordOrError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordDetailStateCopyWith<_$_PasswordDetailState> get copyWith =>
      __$$_PasswordDetailStateCopyWithImpl<_$_PasswordDetailState>(
          this, _$identity);
}

abstract class _PasswordDetailState implements PasswordDetailState {
  const factory _PasswordDetailState(
          {final int itemId,
          final bool itemLoading,
          final bool passwordLoading,
          final Option<Either<PasswordItemDto, String>>? itemOrError,
          final Option<Either<PasswordItemDto, String>>? passwordOrError}) =
      _$_PasswordDetailState;

  @override
  int get itemId;
  @override
  bool get itemLoading;
  @override
  bool get passwordLoading;
  @override
  Option<Either<PasswordItemDto, String>>? get itemOrError;
  @override
  Option<Either<PasswordItemDto, String>>? get passwordOrError;
  @override
  @JsonKey(ignore: true)
  _$$_PasswordDetailStateCopyWith<_$_PasswordDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
