// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'theme_app_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ThemeAppState {
  ThemeData? get theme => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeAppStateCopyWith<ThemeAppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeAppStateCopyWith<$Res> {
  factory $ThemeAppStateCopyWith(
          ThemeAppState value, $Res Function(ThemeAppState) then) =
      _$ThemeAppStateCopyWithImpl<$Res>;
  $Res call({ThemeData? theme});
}

/// @nodoc
class _$ThemeAppStateCopyWithImpl<$Res>
    implements $ThemeAppStateCopyWith<$Res> {
  _$ThemeAppStateCopyWithImpl(this._value, this._then);

  final ThemeAppState _value;
  // ignore: unused_field
  final $Res Function(ThemeAppState) _then;

  @override
  $Res call({
    Object? theme = freezed,
  }) {
    return _then(_value.copyWith(
      theme: theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeData?,
    ));
  }
}

/// @nodoc
abstract class _$$_ThemeAppStateCopyWith<$Res>
    implements $ThemeAppStateCopyWith<$Res> {
  factory _$$_ThemeAppStateCopyWith(
          _$_ThemeAppState value, $Res Function(_$_ThemeAppState) then) =
      __$$_ThemeAppStateCopyWithImpl<$Res>;
  @override
  $Res call({ThemeData? theme});
}

/// @nodoc
class __$$_ThemeAppStateCopyWithImpl<$Res>
    extends _$ThemeAppStateCopyWithImpl<$Res>
    implements _$$_ThemeAppStateCopyWith<$Res> {
  __$$_ThemeAppStateCopyWithImpl(
      _$_ThemeAppState _value, $Res Function(_$_ThemeAppState) _then)
      : super(_value, (v) => _then(v as _$_ThemeAppState));

  @override
  _$_ThemeAppState get _value => super._value as _$_ThemeAppState;

  @override
  $Res call({
    Object? theme = freezed,
  }) {
    return _then(_$_ThemeAppState(
      theme: theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeData?,
    ));
  }
}

/// @nodoc

class _$_ThemeAppState implements _ThemeAppState {
  const _$_ThemeAppState({this.theme});

  @override
  final ThemeData? theme;

  @override
  String toString() {
    return 'ThemeAppState(theme: $theme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ThemeAppState &&
            const DeepCollectionEquality().equals(other.theme, theme));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(theme));

  @JsonKey(ignore: true)
  @override
  _$$_ThemeAppStateCopyWith<_$_ThemeAppState> get copyWith =>
      __$$_ThemeAppStateCopyWithImpl<_$_ThemeAppState>(this, _$identity);
}

abstract class _ThemeAppState implements ThemeAppState {
  const factory _ThemeAppState({final ThemeData? theme}) = _$_ThemeAppState;

  @override
  ThemeData? get theme;
  @override
  @JsonKey(ignore: true)
  _$$_ThemeAppStateCopyWith<_$_ThemeAppState> get copyWith =>
      throw _privateConstructorUsedError;
}
