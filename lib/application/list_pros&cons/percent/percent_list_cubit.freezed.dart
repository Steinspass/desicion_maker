// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'percent_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PercentListState {
  int get percentPro => throw _privateConstructorUsedError;
  int get percentCons => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PercentListStateCopyWith<PercentListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PercentListStateCopyWith<$Res> {
  factory $PercentListStateCopyWith(
          PercentListState value, $Res Function(PercentListState) then) =
      _$PercentListStateCopyWithImpl<$Res>;
  $Res call({int percentPro, int percentCons});
}

/// @nodoc
class _$PercentListStateCopyWithImpl<$Res>
    implements $PercentListStateCopyWith<$Res> {
  _$PercentListStateCopyWithImpl(this._value, this._then);

  final PercentListState _value;
  // ignore: unused_field
  final $Res Function(PercentListState) _then;

  @override
  $Res call({
    Object? percentPro = freezed,
    Object? percentCons = freezed,
  }) {
    return _then(_value.copyWith(
      percentPro: percentPro == freezed
          ? _value.percentPro
          : percentPro // ignore: cast_nullable_to_non_nullable
              as int,
      percentCons: percentCons == freezed
          ? _value.percentCons
          : percentCons // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_PercentListStateCopyWith<$Res>
    implements $PercentListStateCopyWith<$Res> {
  factory _$$_PercentListStateCopyWith(
          _$_PercentListState value, $Res Function(_$_PercentListState) then) =
      __$$_PercentListStateCopyWithImpl<$Res>;
  @override
  $Res call({int percentPro, int percentCons});
}

/// @nodoc
class __$$_PercentListStateCopyWithImpl<$Res>
    extends _$PercentListStateCopyWithImpl<$Res>
    implements _$$_PercentListStateCopyWith<$Res> {
  __$$_PercentListStateCopyWithImpl(
      _$_PercentListState _value, $Res Function(_$_PercentListState) _then)
      : super(_value, (v) => _then(v as _$_PercentListState));

  @override
  _$_PercentListState get _value => super._value as _$_PercentListState;

  @override
  $Res call({
    Object? percentPro = freezed,
    Object? percentCons = freezed,
  }) {
    return _then(_$_PercentListState(
      percentPro: percentPro == freezed
          ? _value.percentPro
          : percentPro // ignore: cast_nullable_to_non_nullable
              as int,
      percentCons: percentCons == freezed
          ? _value.percentCons
          : percentCons // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PercentListState implements _PercentListState {
  const _$_PercentListState({this.percentPro = 0, this.percentCons = 0});

  @override
  @JsonKey()
  final int percentPro;
  @override
  @JsonKey()
  final int percentCons;

  @override
  String toString() {
    return 'PercentListState(percentPro: $percentPro, percentCons: $percentCons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PercentListState &&
            const DeepCollectionEquality()
                .equals(other.percentPro, percentPro) &&
            const DeepCollectionEquality()
                .equals(other.percentCons, percentCons));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(percentPro),
      const DeepCollectionEquality().hash(percentCons));

  @JsonKey(ignore: true)
  @override
  _$$_PercentListStateCopyWith<_$_PercentListState> get copyWith =>
      __$$_PercentListStateCopyWithImpl<_$_PercentListState>(this, _$identity);
}

abstract class _PercentListState implements PercentListState {
  const factory _PercentListState(
      {final int percentPro, final int percentCons}) = _$_PercentListState;

  @override
  int get percentPro;
  @override
  int get percentCons;
  @override
  @JsonKey(ignore: true)
  _$$_PercentListStateCopyWith<_$_PercentListState> get copyWith =>
      throw _privateConstructorUsedError;
}
