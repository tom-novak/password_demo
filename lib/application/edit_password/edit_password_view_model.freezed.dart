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
  String get name => throw _privateConstructorUsedError;

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
  $Res call({String name});
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
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call({String name});
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
    Object? name = null,
  }) {
    return _then(_$_EditPasswordState(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EditPasswordState implements _EditPasswordState {
  const _$_EditPasswordState({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'EditPasswordState(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditPasswordState &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditPasswordStateCopyWith<_$_EditPasswordState> get copyWith =>
      __$$_EditPasswordStateCopyWithImpl<_$_EditPasswordState>(
          this, _$identity);
}

abstract class _EditPasswordState implements EditPasswordState {
  const factory _EditPasswordState({required final String name}) =
      _$_EditPasswordState;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_EditPasswordStateCopyWith<_$_EditPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
