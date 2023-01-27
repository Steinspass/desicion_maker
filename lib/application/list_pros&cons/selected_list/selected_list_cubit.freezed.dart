// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'selected_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SelectedListState {
  ListProsCons? get listSelected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectedListStateCopyWith<SelectedListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedListStateCopyWith<$Res> {
  factory $SelectedListStateCopyWith(
          SelectedListState value, $Res Function(SelectedListState) then) =
      _$SelectedListStateCopyWithImpl<$Res>;
  $Res call({ListProsCons? listSelected});

  $ListProsConsCopyWith<$Res>? get listSelected;
}

/// @nodoc
class _$SelectedListStateCopyWithImpl<$Res>
    implements $SelectedListStateCopyWith<$Res> {
  _$SelectedListStateCopyWithImpl(this._value, this._then);

  final SelectedListState _value;
  // ignore: unused_field
  final $Res Function(SelectedListState) _then;

  @override
  $Res call({
    Object? listSelected = freezed,
  }) {
    return _then(_value.copyWith(
      listSelected: listSelected == freezed
          ? _value.listSelected
          : listSelected // ignore: cast_nullable_to_non_nullable
              as ListProsCons?,
    ));
  }

  @override
  $ListProsConsCopyWith<$Res>? get listSelected {
    if (_value.listSelected == null) {
      return null;
    }

    return $ListProsConsCopyWith<$Res>(_value.listSelected!, (value) {
      return _then(_value.copyWith(listSelected: value));
    });
  }
}

/// @nodoc
abstract class _$$_SelectedListStateCopyWith<$Res>
    implements $SelectedListStateCopyWith<$Res> {
  factory _$$_SelectedListStateCopyWith(_$_SelectedListState value,
          $Res Function(_$_SelectedListState) then) =
      __$$_SelectedListStateCopyWithImpl<$Res>;
  @override
  $Res call({ListProsCons? listSelected});

  @override
  $ListProsConsCopyWith<$Res>? get listSelected;
}

/// @nodoc
class __$$_SelectedListStateCopyWithImpl<$Res>
    extends _$SelectedListStateCopyWithImpl<$Res>
    implements _$$_SelectedListStateCopyWith<$Res> {
  __$$_SelectedListStateCopyWithImpl(
      _$_SelectedListState _value, $Res Function(_$_SelectedListState) _then)
      : super(_value, (v) => _then(v as _$_SelectedListState));

  @override
  _$_SelectedListState get _value => super._value as _$_SelectedListState;

  @override
  $Res call({
    Object? listSelected = freezed,
  }) {
    return _then(_$_SelectedListState(
      listSelected: listSelected == freezed
          ? _value.listSelected
          : listSelected // ignore: cast_nullable_to_non_nullable
              as ListProsCons?,
    ));
  }
}

/// @nodoc

class _$_SelectedListState implements _SelectedListState {
  const _$_SelectedListState({this.listSelected});

  @override
  final ListProsCons? listSelected;

  @override
  String toString() {
    return 'SelectedListState(listSelected: $listSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectedListState &&
            const DeepCollectionEquality()
                .equals(other.listSelected, listSelected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(listSelected));

  @JsonKey(ignore: true)
  @override
  _$$_SelectedListStateCopyWith<_$_SelectedListState> get copyWith =>
      __$$_SelectedListStateCopyWithImpl<_$_SelectedListState>(
          this, _$identity);
}

abstract class _SelectedListState implements SelectedListState {
  const factory _SelectedListState({final ListProsCons? listSelected}) =
      _$_SelectedListState;

  @override
  ListProsCons? get listSelected;
  @override
  @JsonKey(ignore: true)
  _$$_SelectedListStateCopyWith<_$_SelectedListState> get copyWith =>
      throw _privateConstructorUsedError;
}
