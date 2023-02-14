// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_list_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PasswordListState {
  bool get isLoading => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  Either<PasswordItemDto, String>? get itemsOrFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasswordListStateCopyWith<PasswordListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordListStateCopyWith<$Res> {
  factory $PasswordListStateCopyWith(
          PasswordListState value, $Res Function(PasswordListState) then) =
      _$PasswordListStateCopyWithImpl<$Res, PasswordListState>;
  @useResult
  $Res call(
      {bool isLoading,
      int page,
      Either<PasswordItemDto, String>? itemsOrFailure});
}

/// @nodoc
class _$PasswordListStateCopyWithImpl<$Res, $Val extends PasswordListState>
    implements $PasswordListStateCopyWith<$Res> {
  _$PasswordListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? page = null,
    Object? itemsOrFailure = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      itemsOrFailure: freezed == itemsOrFailure
          ? _value.itemsOrFailure
          : itemsOrFailure // ignore: cast_nullable_to_non_nullable
              as Either<PasswordItemDto, String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PasswordListStateCopyWith<$Res>
    implements $PasswordListStateCopyWith<$Res> {
  factory _$$_PasswordListStateCopyWith(_$_PasswordListState value,
          $Res Function(_$_PasswordListState) then) =
      __$$_PasswordListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      int page,
      Either<PasswordItemDto, String>? itemsOrFailure});
}

/// @nodoc
class __$$_PasswordListStateCopyWithImpl<$Res>
    extends _$PasswordListStateCopyWithImpl<$Res, _$_PasswordListState>
    implements _$$_PasswordListStateCopyWith<$Res> {
  __$$_PasswordListStateCopyWithImpl(
      _$_PasswordListState _value, $Res Function(_$_PasswordListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? page = null,
    Object? itemsOrFailure = freezed,
  }) {
    return _then(_$_PasswordListState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      itemsOrFailure: freezed == itemsOrFailure
          ? _value.itemsOrFailure
          : itemsOrFailure // ignore: cast_nullable_to_non_nullable
              as Either<PasswordItemDto, String>?,
    ));
  }
}

/// @nodoc

class _$_PasswordListState implements _PasswordListState {
  const _$_PasswordListState(
      {this.isLoading = false, this.page = 0, this.itemsOrFailure});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final int page;
  @override
  final Either<PasswordItemDto, String>? itemsOrFailure;

  @override
  String toString() {
    return 'PasswordListState(isLoading: $isLoading, page: $page, itemsOrFailure: $itemsOrFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordListState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.itemsOrFailure, itemsOrFailure) ||
                other.itemsOrFailure == itemsOrFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, page, itemsOrFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordListStateCopyWith<_$_PasswordListState> get copyWith =>
      __$$_PasswordListStateCopyWithImpl<_$_PasswordListState>(
          this, _$identity);
}

abstract class _PasswordListState implements PasswordListState {
  const factory _PasswordListState(
          {final bool isLoading,
          final int page,
          final Either<PasswordItemDto, String>? itemsOrFailure}) =
      _$_PasswordListState;

  @override
  bool get isLoading;
  @override
  int get page;
  @override
  Either<PasswordItemDto, String>? get itemsOrFailure;
  @override
  @JsonKey(ignore: true)
  _$$_PasswordListStateCopyWith<_$_PasswordListState> get copyWith =>
      throw _privateConstructorUsedError;
}
