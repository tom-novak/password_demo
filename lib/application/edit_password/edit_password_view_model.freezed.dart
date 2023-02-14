// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_password_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditPasswordState {
  int get itemId => throw _privateConstructorUsedError;
  bool get isProcessing => throw _privateConstructorUsedError;
  Option<Either<ItemProcessingState, String>>? get stateOrError =>
      throw _privateConstructorUsedError;
  Option<Either<PasswordItemDto, String>>? get itemOrError =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditPasswordStateCopyWith<EditPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditPasswordStateCopyWith<$Res> {
  factory $EditPasswordStateCopyWith(
          EditPasswordState value, $Res Function(EditPasswordState) then) =
      _$EditPasswordStateCopyWithImpl<$Res, EditPasswordState>;
  @useResult
  $Res call(
      {int itemId,
      bool isProcessing,
      Option<Either<ItemProcessingState, String>>? stateOrError,
      Option<Either<PasswordItemDto, String>>? itemOrError});
}

/// @nodoc
class _$EditPasswordStateCopyWithImpl<$Res, $Val extends EditPasswordState>
    implements $EditPasswordStateCopyWith<$Res> {
  _$EditPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? isProcessing = null,
    Object? stateOrError = freezed,
    Object? itemOrError = freezed,
  }) {
    return _then(_value.copyWith(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      stateOrError: freezed == stateOrError
          ? _value.stateOrError
          : stateOrError // ignore: cast_nullable_to_non_nullable
              as Option<Either<ItemProcessingState, String>>?,
      itemOrError: freezed == itemOrError
          ? _value.itemOrError
          : itemOrError // ignore: cast_nullable_to_non_nullable
              as Option<Either<PasswordItemDto, String>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EditPasswordStateCopyWith<$Res>
    implements $EditPasswordStateCopyWith<$Res> {
  factory _$$_EditPasswordStateCopyWith(_$_EditPasswordState value,
          $Res Function(_$_EditPasswordState) then) =
      __$$_EditPasswordStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int itemId,
      bool isProcessing,
      Option<Either<ItemProcessingState, String>>? stateOrError,
      Option<Either<PasswordItemDto, String>>? itemOrError});
}

/// @nodoc
class __$$_EditPasswordStateCopyWithImpl<$Res>
    extends _$EditPasswordStateCopyWithImpl<$Res, _$_EditPasswordState>
    implements _$$_EditPasswordStateCopyWith<$Res> {
  __$$_EditPasswordStateCopyWithImpl(
      _$_EditPasswordState _value, $Res Function(_$_EditPasswordState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? isProcessing = null,
    Object? stateOrError = freezed,
    Object? itemOrError = freezed,
  }) {
    return _then(_$_EditPasswordState(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      stateOrError: freezed == stateOrError
          ? _value.stateOrError
          : stateOrError // ignore: cast_nullable_to_non_nullable
              as Option<Either<ItemProcessingState, String>>?,
      itemOrError: freezed == itemOrError
          ? _value.itemOrError
          : itemOrError // ignore: cast_nullable_to_non_nullable
              as Option<Either<PasswordItemDto, String>>?,
    ));
  }
}

/// @nodoc

class _$_EditPasswordState implements _EditPasswordState {
  const _$_EditPasswordState(
      {this.itemId = -1,
      this.isProcessing = false,
      this.stateOrError,
      this.itemOrError})
      : assert(stateOrError != null, 'stateOrError cannot be empty'),
        assert(itemOrError != null, 'itemOrError cannot be empty');

  @override
  @JsonKey()
  final int itemId;
  @override
  @JsonKey()
  final bool isProcessing;
  @override
  final Option<Either<ItemProcessingState, String>>? stateOrError;
  @override
  final Option<Either<PasswordItemDto, String>>? itemOrError;

  @override
  String toString() {
    return 'EditPasswordState(itemId: $itemId, isProcessing: $isProcessing, stateOrError: $stateOrError, itemOrError: $itemOrError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditPasswordState &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.isProcessing, isProcessing) ||
                other.isProcessing == isProcessing) &&
            (identical(other.stateOrError, stateOrError) ||
                other.stateOrError == stateOrError) &&
            (identical(other.itemOrError, itemOrError) ||
                other.itemOrError == itemOrError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, itemId, isProcessing, stateOrError, itemOrError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditPasswordStateCopyWith<_$_EditPasswordState> get copyWith =>
      __$$_EditPasswordStateCopyWithImpl<_$_EditPasswordState>(
          this, _$identity);
}

abstract class _EditPasswordState implements EditPasswordState {
  const factory _EditPasswordState(
          {final int itemId,
          final bool isProcessing,
          final Option<Either<ItemProcessingState, String>>? stateOrError,
          final Option<Either<PasswordItemDto, String>>? itemOrError}) =
      _$_EditPasswordState;

  @override
  int get itemId;
  @override
  bool get isProcessing;
  @override
  Option<Either<ItemProcessingState, String>>? get stateOrError;
  @override
  Option<Either<PasswordItemDto, String>>? get itemOrError;
  @override
  @JsonKey(ignore: true)
  _$$_EditPasswordStateCopyWith<_$_EditPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
