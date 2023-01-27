// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'itemProsCons.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ItemProsCons {
  UniqueId? get id => throw _privateConstructorUsedError;
  ListItemName? get title => throw _privateConstructorUsedError;
  int? get importance => throw _privateConstructorUsedError;
  String? get createDate => throw _privateConstructorUsedError;
  bool? get isPro => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemProsConsCopyWith<ItemProsCons> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemProsConsCopyWith<$Res> {
  factory $ItemProsConsCopyWith(
          ItemProsCons value, $Res Function(ItemProsCons) then) =
      _$ItemProsConsCopyWithImpl<$Res>;
  $Res call(
      {UniqueId? id,
      ListItemName? title,
      int? importance,
      String? createDate,
      bool? isPro,
      String? userId,
      String? userName});
}

/// @nodoc
class _$ItemProsConsCopyWithImpl<$Res> implements $ItemProsConsCopyWith<$Res> {
  _$ItemProsConsCopyWithImpl(this._value, this._then);

  final ItemProsCons _value;
  // ignore: unused_field
  final $Res Function(ItemProsCons) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? importance = freezed,
    Object? createDate = freezed,
    Object? isPro = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as ListItemName?,
      importance: importance == freezed
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as int?,
      createDate: createDate == freezed
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String?,
      isPro: isPro == freezed
          ? _value.isPro
          : isPro // ignore: cast_nullable_to_non_nullable
              as bool?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ItemProsConsCopyWith<$Res>
    implements $ItemProsConsCopyWith<$Res> {
  factory _$$_ItemProsConsCopyWith(
          _$_ItemProsCons value, $Res Function(_$_ItemProsCons) then) =
      __$$_ItemProsConsCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId? id,
      ListItemName? title,
      int? importance,
      String? createDate,
      bool? isPro,
      String? userId,
      String? userName});
}

/// @nodoc
class __$$_ItemProsConsCopyWithImpl<$Res>
    extends _$ItemProsConsCopyWithImpl<$Res>
    implements _$$_ItemProsConsCopyWith<$Res> {
  __$$_ItemProsConsCopyWithImpl(
      _$_ItemProsCons _value, $Res Function(_$_ItemProsCons) _then)
      : super(_value, (v) => _then(v as _$_ItemProsCons));

  @override
  _$_ItemProsCons get _value => super._value as _$_ItemProsCons;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? importance = freezed,
    Object? createDate = freezed,
    Object? isPro = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
  }) {
    return _then(_$_ItemProsCons(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as ListItemName?,
      importance: importance == freezed
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as int?,
      createDate: createDate == freezed
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String?,
      isPro: isPro == freezed
          ? _value.isPro
          : isPro // ignore: cast_nullable_to_non_nullable
              as bool?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ItemProsCons with DiagnosticableTreeMixin implements _ItemProsCons {
  const _$_ItemProsCons(
      {this.id,
      this.title,
      this.importance,
      this.createDate,
      this.isPro,
      this.userId,
      this.userName});

  @override
  final UniqueId? id;
  @override
  final ListItemName? title;
  @override
  final int? importance;
  @override
  final String? createDate;
  @override
  final bool? isPro;
  @override
  final String? userId;
  @override
  final String? userName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemProsCons(id: $id, title: $title, importance: $importance, createDate: $createDate, isPro: $isPro, userId: $userId, userName: $userName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ItemProsCons'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('importance', importance))
      ..add(DiagnosticsProperty('createDate', createDate))
      ..add(DiagnosticsProperty('isPro', isPro))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('userName', userName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemProsCons &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.importance, importance) &&
            const DeepCollectionEquality()
                .equals(other.createDate, createDate) &&
            const DeepCollectionEquality().equals(other.isPro, isPro) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.userName, userName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(importance),
      const DeepCollectionEquality().hash(createDate),
      const DeepCollectionEquality().hash(isPro),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(userName));

  @JsonKey(ignore: true)
  @override
  _$$_ItemProsConsCopyWith<_$_ItemProsCons> get copyWith =>
      __$$_ItemProsConsCopyWithImpl<_$_ItemProsCons>(this, _$identity);
}

abstract class _ItemProsCons implements ItemProsCons {
  const factory _ItemProsCons(
      {final UniqueId? id,
      final ListItemName? title,
      final int? importance,
      final String? createDate,
      final bool? isPro,
      final String? userId,
      final String? userName}) = _$_ItemProsCons;

  @override
  UniqueId? get id;
  @override
  ListItemName? get title;
  @override
  int? get importance;
  @override
  String? get createDate;
  @override
  bool? get isPro;
  @override
  String? get userId;
  @override
  String? get userName;
  @override
  @JsonKey(ignore: true)
  _$$_ItemProsConsCopyWith<_$_ItemProsCons> get copyWith =>
      throw _privateConstructorUsedError;
}
