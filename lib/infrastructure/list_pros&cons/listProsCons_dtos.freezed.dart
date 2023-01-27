// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'listProsCons_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListProsConsDto _$ListProsConsDtoFromJson(Map<String, dynamic> json) {
  return _ListProsConsDto.fromJson(json);
}

/// @nodoc
mixin _$ListProsConsDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get desc => throw _privateConstructorUsedError;
  String? get namePros => throw _privateConstructorUsedError;
  String? get nameCons => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  bool? get isPrivate => throw _privateConstructorUsedError;
  String? get createDate => throw _privateConstructorUsedError;
  double? get balance => throw _privateConstructorUsedError;
  List<ItemProsConsDto>? get listItemPros => throw _privateConstructorUsedError;
  List<ItemProsConsDto>? get listItemCons => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  List<String>? get collaborators => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  FieldValue? get serverTimestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListProsConsDtoCopyWith<ListProsConsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListProsConsDtoCopyWith<$Res> {
  factory $ListProsConsDtoCopyWith(
          ListProsConsDto value, $Res Function(ListProsConsDto) then) =
      _$ListProsConsDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String? title,
      String? desc,
      String? namePros,
      String? nameCons,
      int? status,
      bool? isPrivate,
      String? createDate,
      double? balance,
      List<ItemProsConsDto>? listItemPros,
      List<ItemProsConsDto>? listItemCons,
      String? userId,
      String? userName,
      List<String>? collaborators,
      @ServerTimestampConverter() FieldValue? serverTimestamp});
}

/// @nodoc
class _$ListProsConsDtoCopyWithImpl<$Res>
    implements $ListProsConsDtoCopyWith<$Res> {
  _$ListProsConsDtoCopyWithImpl(this._value, this._then);

  final ListProsConsDto _value;
  // ignore: unused_field
  final $Res Function(ListProsConsDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? desc = freezed,
    Object? namePros = freezed,
    Object? nameCons = freezed,
    Object? status = freezed,
    Object? isPrivate = freezed,
    Object? createDate = freezed,
    Object? balance = freezed,
    Object? listItemPros = freezed,
    Object? listItemCons = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
    Object? collaborators = freezed,
    Object? serverTimestamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      namePros: namePros == freezed
          ? _value.namePros
          : namePros // ignore: cast_nullable_to_non_nullable
              as String?,
      nameCons: nameCons == freezed
          ? _value.nameCons
          : nameCons // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      isPrivate: isPrivate == freezed
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool?,
      createDate: createDate == freezed
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
      listItemPros: listItemPros == freezed
          ? _value.listItemPros
          : listItemPros // ignore: cast_nullable_to_non_nullable
              as List<ItemProsConsDto>?,
      listItemCons: listItemCons == freezed
          ? _value.listItemCons
          : listItemCons // ignore: cast_nullable_to_non_nullable
              as List<ItemProsConsDto>?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      collaborators: collaborators == freezed
          ? _value.collaborators
          : collaborators // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      serverTimestamp: serverTimestamp == freezed
          ? _value.serverTimestamp
          : serverTimestamp // ignore: cast_nullable_to_non_nullable
              as FieldValue?,
    ));
  }
}

/// @nodoc
abstract class _$$_ListProsConsDtoCopyWith<$Res>
    implements $ListProsConsDtoCopyWith<$Res> {
  factory _$$_ListProsConsDtoCopyWith(
          _$_ListProsConsDto value, $Res Function(_$_ListProsConsDto) then) =
      __$$_ListProsConsDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String? title,
      String? desc,
      String? namePros,
      String? nameCons,
      int? status,
      bool? isPrivate,
      String? createDate,
      double? balance,
      List<ItemProsConsDto>? listItemPros,
      List<ItemProsConsDto>? listItemCons,
      String? userId,
      String? userName,
      List<String>? collaborators,
      @ServerTimestampConverter() FieldValue? serverTimestamp});
}

/// @nodoc
class __$$_ListProsConsDtoCopyWithImpl<$Res>
    extends _$ListProsConsDtoCopyWithImpl<$Res>
    implements _$$_ListProsConsDtoCopyWith<$Res> {
  __$$_ListProsConsDtoCopyWithImpl(
      _$_ListProsConsDto _value, $Res Function(_$_ListProsConsDto) _then)
      : super(_value, (v) => _then(v as _$_ListProsConsDto));

  @override
  _$_ListProsConsDto get _value => super._value as _$_ListProsConsDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? desc = freezed,
    Object? namePros = freezed,
    Object? nameCons = freezed,
    Object? status = freezed,
    Object? isPrivate = freezed,
    Object? createDate = freezed,
    Object? balance = freezed,
    Object? listItemPros = freezed,
    Object? listItemCons = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
    Object? collaborators = freezed,
    Object? serverTimestamp = freezed,
  }) {
    return _then(_$_ListProsConsDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      namePros: namePros == freezed
          ? _value.namePros
          : namePros // ignore: cast_nullable_to_non_nullable
              as String?,
      nameCons: nameCons == freezed
          ? _value.nameCons
          : nameCons // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      isPrivate: isPrivate == freezed
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool?,
      createDate: createDate == freezed
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
      listItemPros: listItemPros == freezed
          ? _value._listItemPros
          : listItemPros // ignore: cast_nullable_to_non_nullable
              as List<ItemProsConsDto>?,
      listItemCons: listItemCons == freezed
          ? _value._listItemCons
          : listItemCons // ignore: cast_nullable_to_non_nullable
              as List<ItemProsConsDto>?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      collaborators: collaborators == freezed
          ? _value._collaborators
          : collaborators // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      serverTimestamp: serverTimestamp == freezed
          ? _value.serverTimestamp
          : serverTimestamp // ignore: cast_nullable_to_non_nullable
              as FieldValue?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListProsConsDto implements _ListProsConsDto {
  _$_ListProsConsDto(
      {@JsonKey(ignore: true) this.id,
      this.title,
      this.desc,
      this.namePros,
      this.nameCons,
      this.status,
      this.isPrivate,
      this.createDate,
      this.balance,
      final List<ItemProsConsDto>? listItemPros,
      final List<ItemProsConsDto>? listItemCons,
      this.userId,
      this.userName,
      final List<String>? collaborators,
      @ServerTimestampConverter() this.serverTimestamp})
      : _listItemPros = listItemPros,
        _listItemCons = listItemCons,
        _collaborators = collaborators;

  factory _$_ListProsConsDto.fromJson(Map<String, dynamic> json) =>
      _$$_ListProsConsDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String? title;
  @override
  final String? desc;
  @override
  final String? namePros;
  @override
  final String? nameCons;
  @override
  final int? status;
  @override
  final bool? isPrivate;
  @override
  final String? createDate;
  @override
  final double? balance;
  final List<ItemProsConsDto>? _listItemPros;
  @override
  List<ItemProsConsDto>? get listItemPros {
    final value = _listItemPros;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ItemProsConsDto>? _listItemCons;
  @override
  List<ItemProsConsDto>? get listItemCons {
    final value = _listItemCons;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? userId;
  @override
  final String? userName;
  final List<String>? _collaborators;
  @override
  List<String>? get collaborators {
    final value = _collaborators;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @ServerTimestampConverter()
  final FieldValue? serverTimestamp;

  @override
  String toString() {
    return 'ListProsConsDto(id: $id, title: $title, desc: $desc, namePros: $namePros, nameCons: $nameCons, status: $status, isPrivate: $isPrivate, createDate: $createDate, balance: $balance, listItemPros: $listItemPros, listItemCons: $listItemCons, userId: $userId, userName: $userName, collaborators: $collaborators, serverTimestamp: $serverTimestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListProsConsDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.desc, desc) &&
            const DeepCollectionEquality().equals(other.namePros, namePros) &&
            const DeepCollectionEquality().equals(other.nameCons, nameCons) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.isPrivate, isPrivate) &&
            const DeepCollectionEquality()
                .equals(other.createDate, createDate) &&
            const DeepCollectionEquality().equals(other.balance, balance) &&
            const DeepCollectionEquality()
                .equals(other._listItemPros, _listItemPros) &&
            const DeepCollectionEquality()
                .equals(other._listItemCons, _listItemCons) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality()
                .equals(other._collaborators, _collaborators) &&
            const DeepCollectionEquality()
                .equals(other.serverTimestamp, serverTimestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(desc),
      const DeepCollectionEquality().hash(namePros),
      const DeepCollectionEquality().hash(nameCons),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(isPrivate),
      const DeepCollectionEquality().hash(createDate),
      const DeepCollectionEquality().hash(balance),
      const DeepCollectionEquality().hash(_listItemPros),
      const DeepCollectionEquality().hash(_listItemCons),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(_collaborators),
      const DeepCollectionEquality().hash(serverTimestamp));

  @JsonKey(ignore: true)
  @override
  _$$_ListProsConsDtoCopyWith<_$_ListProsConsDto> get copyWith =>
      __$$_ListProsConsDtoCopyWithImpl<_$_ListProsConsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListProsConsDtoToJson(
      this,
    );
  }
}

abstract class _ListProsConsDto implements ListProsConsDto {
  factory _ListProsConsDto(
          {@JsonKey(ignore: true) final String? id,
          final String? title,
          final String? desc,
          final String? namePros,
          final String? nameCons,
          final int? status,
          final bool? isPrivate,
          final String? createDate,
          final double? balance,
          final List<ItemProsConsDto>? listItemPros,
          final List<ItemProsConsDto>? listItemCons,
          final String? userId,
          final String? userName,
          final List<String>? collaborators,
          @ServerTimestampConverter() final FieldValue? serverTimestamp}) =
      _$_ListProsConsDto;

  factory _ListProsConsDto.fromJson(Map<String, dynamic> json) =
      _$_ListProsConsDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  String? get title;
  @override
  String? get desc;
  @override
  String? get namePros;
  @override
  String? get nameCons;
  @override
  int? get status;
  @override
  bool? get isPrivate;
  @override
  String? get createDate;
  @override
  double? get balance;
  @override
  List<ItemProsConsDto>? get listItemPros;
  @override
  List<ItemProsConsDto>? get listItemCons;
  @override
  String? get userId;
  @override
  String? get userName;
  @override
  List<String>? get collaborators;
  @override
  @ServerTimestampConverter()
  FieldValue? get serverTimestamp;
  @override
  @JsonKey(ignore: true)
  _$$_ListProsConsDtoCopyWith<_$_ListProsConsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemProsConsDto _$ItemProsConsDtoFromJson(Map<String, dynamic> json) {
  return _ItemProsConsDto.fromJson(json);
}

/// @nodoc
mixin _$ItemProsConsDto {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int? get importance => throw _privateConstructorUsedError;
  String? get createDate => throw _privateConstructorUsedError;
  bool? get isPro => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemProsConsDtoCopyWith<ItemProsConsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemProsConsDtoCopyWith<$Res> {
  factory $ItemProsConsDtoCopyWith(
          ItemProsConsDto value, $Res Function(ItemProsConsDto) then) =
      _$ItemProsConsDtoCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? title,
      int? importance,
      String? createDate,
      bool? isPro,
      String? userId,
      String? userName});
}

/// @nodoc
class _$ItemProsConsDtoCopyWithImpl<$Res>
    implements $ItemProsConsDtoCopyWith<$Res> {
  _$ItemProsConsDtoCopyWithImpl(this._value, this._then);

  final ItemProsConsDto _value;
  // ignore: unused_field
  final $Res Function(ItemProsConsDto) _then;

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
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_ItemProsConsDtoCopyWith<$Res>
    implements $ItemProsConsDtoCopyWith<$Res> {
  factory _$$_ItemProsConsDtoCopyWith(
          _$_ItemProsConsDto value, $Res Function(_$_ItemProsConsDto) then) =
      __$$_ItemProsConsDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? title,
      int? importance,
      String? createDate,
      bool? isPro,
      String? userId,
      String? userName});
}

/// @nodoc
class __$$_ItemProsConsDtoCopyWithImpl<$Res>
    extends _$ItemProsConsDtoCopyWithImpl<$Res>
    implements _$$_ItemProsConsDtoCopyWith<$Res> {
  __$$_ItemProsConsDtoCopyWithImpl(
      _$_ItemProsConsDto _value, $Res Function(_$_ItemProsConsDto) _then)
      : super(_value, (v) => _then(v as _$_ItemProsConsDto));

  @override
  _$_ItemProsConsDto get _value => super._value as _$_ItemProsConsDto;

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
    return _then(_$_ItemProsConsDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
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
@JsonSerializable()
class _$_ItemProsConsDto implements _ItemProsConsDto {
  const _$_ItemProsConsDto(
      {this.id,
      this.title,
      this.importance,
      this.createDate,
      this.isPro,
      this.userId,
      this.userName});

  factory _$_ItemProsConsDto.fromJson(Map<String, dynamic> json) =>
      _$$_ItemProsConsDtoFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
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
  String toString() {
    return 'ItemProsConsDto(id: $id, title: $title, importance: $importance, createDate: $createDate, isPro: $isPro, userId: $userId, userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemProsConsDto &&
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

  @JsonKey(ignore: true)
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
  _$$_ItemProsConsDtoCopyWith<_$_ItemProsConsDto> get copyWith =>
      __$$_ItemProsConsDtoCopyWithImpl<_$_ItemProsConsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemProsConsDtoToJson(
      this,
    );
  }
}

abstract class _ItemProsConsDto implements ItemProsConsDto {
  const factory _ItemProsConsDto(
      {final String? id,
      final String? title,
      final int? importance,
      final String? createDate,
      final bool? isPro,
      final String? userId,
      final String? userName}) = _$_ItemProsConsDto;

  factory _ItemProsConsDto.fromJson(Map<String, dynamic> json) =
      _$_ItemProsConsDto.fromJson;

  @override
  String? get id;
  @override
  String? get title;
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
  _$$_ItemProsConsDtoCopyWith<_$_ItemProsConsDto> get copyWith =>
      throw _privateConstructorUsedError;
}
