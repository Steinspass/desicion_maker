// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_creater_updater_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ItemCreaterUpdaterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<ItemProsCons> initialItemOption, bool isPro, String id)
        initialized,
    required TResult Function(String title) titleItemChanged,
    required TResult Function(int importance) importanceItemChanged,
    required TResult Function(String createDate) createDateItemChanged,
    required TResult Function(bool isPro) isProItemChanged,
    required TResult Function(String userId) userIdItemChanged,
    required TResult Function(String userName) userNameItemChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            Option<ItemProsCons> initialItemOption, bool isPro, String id)?
        initialized,
    TResult Function(String title)? titleItemChanged,
    TResult Function(int importance)? importanceItemChanged,
    TResult Function(String createDate)? createDateItemChanged,
    TResult Function(bool isPro)? isProItemChanged,
    TResult Function(String userId)? userIdItemChanged,
    TResult Function(String userName)? userNameItemChanged,
    TResult Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Option<ItemProsCons> initialItemOption, bool isPro, String id)?
        initialized,
    TResult Function(String title)? titleItemChanged,
    TResult Function(int importance)? importanceItemChanged,
    TResult Function(String createDate)? createDateItemChanged,
    TResult Function(bool isPro)? isProItemChanged,
    TResult Function(String userId)? userIdItemChanged,
    TResult Function(String userName)? userNameItemChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializedItem value) initialized,
    required TResult Function(_TitleItemChanged value) titleItemChanged,
    required TResult Function(_ImportanceItemChanged value)
        importanceItemChanged,
    required TResult Function(_CreateDateItemChanged value)
        createDateItemChanged,
    required TResult Function(_IsProItemChanged value) isProItemChanged,
    required TResult Function(_UserIdItemChanged value) userIdItemChanged,
    required TResult Function(_UserNameItemChanged value) userNameItemChanged,
    required TResult Function(_ItemSaved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitializedItem value)? initialized,
    TResult Function(_TitleItemChanged value)? titleItemChanged,
    TResult Function(_ImportanceItemChanged value)? importanceItemChanged,
    TResult Function(_CreateDateItemChanged value)? createDateItemChanged,
    TResult Function(_IsProItemChanged value)? isProItemChanged,
    TResult Function(_UserIdItemChanged value)? userIdItemChanged,
    TResult Function(_UserNameItemChanged value)? userNameItemChanged,
    TResult Function(_ItemSaved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializedItem value)? initialized,
    TResult Function(_TitleItemChanged value)? titleItemChanged,
    TResult Function(_ImportanceItemChanged value)? importanceItemChanged,
    TResult Function(_CreateDateItemChanged value)? createDateItemChanged,
    TResult Function(_IsProItemChanged value)? isProItemChanged,
    TResult Function(_UserIdItemChanged value)? userIdItemChanged,
    TResult Function(_UserNameItemChanged value)? userNameItemChanged,
    TResult Function(_ItemSaved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCreaterUpdaterEventCopyWith<$Res> {
  factory $ItemCreaterUpdaterEventCopyWith(ItemCreaterUpdaterEvent value,
          $Res Function(ItemCreaterUpdaterEvent) then) =
      _$ItemCreaterUpdaterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ItemCreaterUpdaterEventCopyWithImpl<$Res>
    implements $ItemCreaterUpdaterEventCopyWith<$Res> {
  _$ItemCreaterUpdaterEventCopyWithImpl(this._value, this._then);

  final ItemCreaterUpdaterEvent _value;
  // ignore: unused_field
  final $Res Function(ItemCreaterUpdaterEvent) _then;
}

/// @nodoc
abstract class _$$_InitializedItemCopyWith<$Res> {
  factory _$$_InitializedItemCopyWith(
          _$_InitializedItem value, $Res Function(_$_InitializedItem) then) =
      __$$_InitializedItemCopyWithImpl<$Res>;
  $Res call({Option<ItemProsCons> initialItemOption, bool isPro, String id});
}

/// @nodoc
class __$$_InitializedItemCopyWithImpl<$Res>
    extends _$ItemCreaterUpdaterEventCopyWithImpl<$Res>
    implements _$$_InitializedItemCopyWith<$Res> {
  __$$_InitializedItemCopyWithImpl(
      _$_InitializedItem _value, $Res Function(_$_InitializedItem) _then)
      : super(_value, (v) => _then(v as _$_InitializedItem));

  @override
  _$_InitializedItem get _value => super._value as _$_InitializedItem;

  @override
  $Res call({
    Object? initialItemOption = freezed,
    Object? isPro = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_InitializedItem(
      initialItemOption == freezed
          ? _value.initialItemOption
          : initialItemOption // ignore: cast_nullable_to_non_nullable
              as Option<ItemProsCons>,
      isPro == freezed
          ? _value.isPro
          : isPro // ignore: cast_nullable_to_non_nullable
              as bool,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InitializedItem implements _InitializedItem {
  const _$_InitializedItem(this.initialItemOption, this.isPro, this.id);

  @override
  final Option<ItemProsCons> initialItemOption;
  @override
  final bool isPro;
  @override
  final String id;

  @override
  String toString() {
    return 'ItemCreaterUpdaterEvent.initialized(initialItemOption: $initialItemOption, isPro: $isPro, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitializedItem &&
            const DeepCollectionEquality()
                .equals(other.initialItemOption, initialItemOption) &&
            const DeepCollectionEquality().equals(other.isPro, isPro) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(initialItemOption),
      const DeepCollectionEquality().hash(isPro),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_InitializedItemCopyWith<_$_InitializedItem> get copyWith =>
      __$$_InitializedItemCopyWithImpl<_$_InitializedItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<ItemProsCons> initialItemOption, bool isPro, String id)
        initialized,
    required TResult Function(String title) titleItemChanged,
    required TResult Function(int importance) importanceItemChanged,
    required TResult Function(String createDate) createDateItemChanged,
    required TResult Function(bool isPro) isProItemChanged,
    required TResult Function(String userId) userIdItemChanged,
    required TResult Function(String userName) userNameItemChanged,
    required TResult Function() saved,
  }) {
    return initialized(initialItemOption, isPro, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            Option<ItemProsCons> initialItemOption, bool isPro, String id)?
        initialized,
    TResult Function(String title)? titleItemChanged,
    TResult Function(int importance)? importanceItemChanged,
    TResult Function(String createDate)? createDateItemChanged,
    TResult Function(bool isPro)? isProItemChanged,
    TResult Function(String userId)? userIdItemChanged,
    TResult Function(String userName)? userNameItemChanged,
    TResult Function()? saved,
  }) {
    return initialized?.call(initialItemOption, isPro, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Option<ItemProsCons> initialItemOption, bool isPro, String id)?
        initialized,
    TResult Function(String title)? titleItemChanged,
    TResult Function(int importance)? importanceItemChanged,
    TResult Function(String createDate)? createDateItemChanged,
    TResult Function(bool isPro)? isProItemChanged,
    TResult Function(String userId)? userIdItemChanged,
    TResult Function(String userName)? userNameItemChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialItemOption, isPro, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializedItem value) initialized,
    required TResult Function(_TitleItemChanged value) titleItemChanged,
    required TResult Function(_ImportanceItemChanged value)
        importanceItemChanged,
    required TResult Function(_CreateDateItemChanged value)
        createDateItemChanged,
    required TResult Function(_IsProItemChanged value) isProItemChanged,
    required TResult Function(_UserIdItemChanged value) userIdItemChanged,
    required TResult Function(_UserNameItemChanged value) userNameItemChanged,
    required TResult Function(_ItemSaved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitializedItem value)? initialized,
    TResult Function(_TitleItemChanged value)? titleItemChanged,
    TResult Function(_ImportanceItemChanged value)? importanceItemChanged,
    TResult Function(_CreateDateItemChanged value)? createDateItemChanged,
    TResult Function(_IsProItemChanged value)? isProItemChanged,
    TResult Function(_UserIdItemChanged value)? userIdItemChanged,
    TResult Function(_UserNameItemChanged value)? userNameItemChanged,
    TResult Function(_ItemSaved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializedItem value)? initialized,
    TResult Function(_TitleItemChanged value)? titleItemChanged,
    TResult Function(_ImportanceItemChanged value)? importanceItemChanged,
    TResult Function(_CreateDateItemChanged value)? createDateItemChanged,
    TResult Function(_IsProItemChanged value)? isProItemChanged,
    TResult Function(_UserIdItemChanged value)? userIdItemChanged,
    TResult Function(_UserNameItemChanged value)? userNameItemChanged,
    TResult Function(_ItemSaved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _InitializedItem implements ItemCreaterUpdaterEvent {
  const factory _InitializedItem(final Option<ItemProsCons> initialItemOption,
      final bool isPro, final String id) = _$_InitializedItem;

  Option<ItemProsCons> get initialItemOption;
  bool get isPro;
  String get id;
  @JsonKey(ignore: true)
  _$$_InitializedItemCopyWith<_$_InitializedItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TitleItemChangedCopyWith<$Res> {
  factory _$$_TitleItemChangedCopyWith(
          _$_TitleItemChanged value, $Res Function(_$_TitleItemChanged) then) =
      __$$_TitleItemChangedCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class __$$_TitleItemChangedCopyWithImpl<$Res>
    extends _$ItemCreaterUpdaterEventCopyWithImpl<$Res>
    implements _$$_TitleItemChangedCopyWith<$Res> {
  __$$_TitleItemChangedCopyWithImpl(
      _$_TitleItemChanged _value, $Res Function(_$_TitleItemChanged) _then)
      : super(_value, (v) => _then(v as _$_TitleItemChanged));

  @override
  _$_TitleItemChanged get _value => super._value as _$_TitleItemChanged;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_$_TitleItemChanged(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TitleItemChanged implements _TitleItemChanged {
  const _$_TitleItemChanged(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'ItemCreaterUpdaterEvent.titleItemChanged(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TitleItemChanged &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$_TitleItemChangedCopyWith<_$_TitleItemChanged> get copyWith =>
      __$$_TitleItemChangedCopyWithImpl<_$_TitleItemChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<ItemProsCons> initialItemOption, bool isPro, String id)
        initialized,
    required TResult Function(String title) titleItemChanged,
    required TResult Function(int importance) importanceItemChanged,
    required TResult Function(String createDate) createDateItemChanged,
    required TResult Function(bool isPro) isProItemChanged,
    required TResult Function(String userId) userIdItemChanged,
    required TResult Function(String userName) userNameItemChanged,
    required TResult Function() saved,
  }) {
    return titleItemChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            Option<ItemProsCons> initialItemOption, bool isPro, String id)?
        initialized,
    TResult Function(String title)? titleItemChanged,
    TResult Function(int importance)? importanceItemChanged,
    TResult Function(String createDate)? createDateItemChanged,
    TResult Function(bool isPro)? isProItemChanged,
    TResult Function(String userId)? userIdItemChanged,
    TResult Function(String userName)? userNameItemChanged,
    TResult Function()? saved,
  }) {
    return titleItemChanged?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Option<ItemProsCons> initialItemOption, bool isPro, String id)?
        initialized,
    TResult Function(String title)? titleItemChanged,
    TResult Function(int importance)? importanceItemChanged,
    TResult Function(String createDate)? createDateItemChanged,
    TResult Function(bool isPro)? isProItemChanged,
    TResult Function(String userId)? userIdItemChanged,
    TResult Function(String userName)? userNameItemChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (titleItemChanged != null) {
      return titleItemChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializedItem value) initialized,
    required TResult Function(_TitleItemChanged value) titleItemChanged,
    required TResult Function(_ImportanceItemChanged value)
        importanceItemChanged,
    required TResult Function(_CreateDateItemChanged value)
        createDateItemChanged,
    required TResult Function(_IsProItemChanged value) isProItemChanged,
    required TResult Function(_UserIdItemChanged value) userIdItemChanged,
    required TResult Function(_UserNameItemChanged value) userNameItemChanged,
    required TResult Function(_ItemSaved value) saved,
  }) {
    return titleItemChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitializedItem value)? initialized,
    TResult Function(_TitleItemChanged value)? titleItemChanged,
    TResult Function(_ImportanceItemChanged value)? importanceItemChanged,
    TResult Function(_CreateDateItemChanged value)? createDateItemChanged,
    TResult Function(_IsProItemChanged value)? isProItemChanged,
    TResult Function(_UserIdItemChanged value)? userIdItemChanged,
    TResult Function(_UserNameItemChanged value)? userNameItemChanged,
    TResult Function(_ItemSaved value)? saved,
  }) {
    return titleItemChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializedItem value)? initialized,
    TResult Function(_TitleItemChanged value)? titleItemChanged,
    TResult Function(_ImportanceItemChanged value)? importanceItemChanged,
    TResult Function(_CreateDateItemChanged value)? createDateItemChanged,
    TResult Function(_IsProItemChanged value)? isProItemChanged,
    TResult Function(_UserIdItemChanged value)? userIdItemChanged,
    TResult Function(_UserNameItemChanged value)? userNameItemChanged,
    TResult Function(_ItemSaved value)? saved,
    required TResult orElse(),
  }) {
    if (titleItemChanged != null) {
      return titleItemChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleItemChanged implements ItemCreaterUpdaterEvent {
  const factory _TitleItemChanged(final String title) = _$_TitleItemChanged;

  String get title;
  @JsonKey(ignore: true)
  _$$_TitleItemChangedCopyWith<_$_TitleItemChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ImportanceItemChangedCopyWith<$Res> {
  factory _$$_ImportanceItemChangedCopyWith(_$_ImportanceItemChanged value,
          $Res Function(_$_ImportanceItemChanged) then) =
      __$$_ImportanceItemChangedCopyWithImpl<$Res>;
  $Res call({int importance});
}

/// @nodoc
class __$$_ImportanceItemChangedCopyWithImpl<$Res>
    extends _$ItemCreaterUpdaterEventCopyWithImpl<$Res>
    implements _$$_ImportanceItemChangedCopyWith<$Res> {
  __$$_ImportanceItemChangedCopyWithImpl(_$_ImportanceItemChanged _value,
      $Res Function(_$_ImportanceItemChanged) _then)
      : super(_value, (v) => _then(v as _$_ImportanceItemChanged));

  @override
  _$_ImportanceItemChanged get _value =>
      super._value as _$_ImportanceItemChanged;

  @override
  $Res call({
    Object? importance = freezed,
  }) {
    return _then(_$_ImportanceItemChanged(
      importance == freezed
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ImportanceItemChanged implements _ImportanceItemChanged {
  const _$_ImportanceItemChanged(this.importance);

  @override
  final int importance;

  @override
  String toString() {
    return 'ItemCreaterUpdaterEvent.importanceItemChanged(importance: $importance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImportanceItemChanged &&
            const DeepCollectionEquality()
                .equals(other.importance, importance));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(importance));

  @JsonKey(ignore: true)
  @override
  _$$_ImportanceItemChangedCopyWith<_$_ImportanceItemChanged> get copyWith =>
      __$$_ImportanceItemChangedCopyWithImpl<_$_ImportanceItemChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<ItemProsCons> initialItemOption, bool isPro, String id)
        initialized,
    required TResult Function(String title) titleItemChanged,
    required TResult Function(int importance) importanceItemChanged,
    required TResult Function(String createDate) createDateItemChanged,
    required TResult Function(bool isPro) isProItemChanged,
    required TResult Function(String userId) userIdItemChanged,
    required TResult Function(String userName) userNameItemChanged,
    required TResult Function() saved,
  }) {
    return importanceItemChanged(importance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            Option<ItemProsCons> initialItemOption, bool isPro, String id)?
        initialized,
    TResult Function(String title)? titleItemChanged,
    TResult Function(int importance)? importanceItemChanged,
    TResult Function(String createDate)? createDateItemChanged,
    TResult Function(bool isPro)? isProItemChanged,
    TResult Function(String userId)? userIdItemChanged,
    TResult Function(String userName)? userNameItemChanged,
    TResult Function()? saved,
  }) {
    return importanceItemChanged?.call(importance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Option<ItemProsCons> initialItemOption, bool isPro, String id)?
        initialized,
    TResult Function(String title)? titleItemChanged,
    TResult Function(int importance)? importanceItemChanged,
    TResult Function(String createDate)? createDateItemChanged,
    TResult Function(bool isPro)? isProItemChanged,
    TResult Function(String userId)? userIdItemChanged,
    TResult Function(String userName)? userNameItemChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (importanceItemChanged != null) {
      return importanceItemChanged(importance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializedItem value) initialized,
    required TResult Function(_TitleItemChanged value) titleItemChanged,
    required TResult Function(_ImportanceItemChanged value)
        importanceItemChanged,
    required TResult Function(_CreateDateItemChanged value)
        createDateItemChanged,
    required TResult Function(_IsProItemChanged value) isProItemChanged,
    required TResult Function(_UserIdItemChanged value) userIdItemChanged,
    required TResult Function(_UserNameItemChanged value) userNameItemChanged,
    required TResult Function(_ItemSaved value) saved,
  }) {
    return importanceItemChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitializedItem value)? initialized,
    TResult Function(_TitleItemChanged value)? titleItemChanged,
    TResult Function(_ImportanceItemChanged value)? importanceItemChanged,
    TResult Function(_CreateDateItemChanged value)? createDateItemChanged,
    TResult Function(_IsProItemChanged value)? isProItemChanged,
    TResult Function(_UserIdItemChanged value)? userIdItemChanged,
    TResult Function(_UserNameItemChanged value)? userNameItemChanged,
    TResult Function(_ItemSaved value)? saved,
  }) {
    return importanceItemChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializedItem value)? initialized,
    TResult Function(_TitleItemChanged value)? titleItemChanged,
    TResult Function(_ImportanceItemChanged value)? importanceItemChanged,
    TResult Function(_CreateDateItemChanged value)? createDateItemChanged,
    TResult Function(_IsProItemChanged value)? isProItemChanged,
    TResult Function(_UserIdItemChanged value)? userIdItemChanged,
    TResult Function(_UserNameItemChanged value)? userNameItemChanged,
    TResult Function(_ItemSaved value)? saved,
    required TResult orElse(),
  }) {
    if (importanceItemChanged != null) {
      return importanceItemChanged(this);
    }
    return orElse();
  }
}

abstract class _ImportanceItemChanged implements ItemCreaterUpdaterEvent {
  const factory _ImportanceItemChanged(final int importance) =
      _$_ImportanceItemChanged;

  int get importance;
  @JsonKey(ignore: true)
  _$$_ImportanceItemChangedCopyWith<_$_ImportanceItemChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreateDateItemChangedCopyWith<$Res> {
  factory _$$_CreateDateItemChangedCopyWith(_$_CreateDateItemChanged value,
          $Res Function(_$_CreateDateItemChanged) then) =
      __$$_CreateDateItemChangedCopyWithImpl<$Res>;
  $Res call({String createDate});
}

/// @nodoc
class __$$_CreateDateItemChangedCopyWithImpl<$Res>
    extends _$ItemCreaterUpdaterEventCopyWithImpl<$Res>
    implements _$$_CreateDateItemChangedCopyWith<$Res> {
  __$$_CreateDateItemChangedCopyWithImpl(_$_CreateDateItemChanged _value,
      $Res Function(_$_CreateDateItemChanged) _then)
      : super(_value, (v) => _then(v as _$_CreateDateItemChanged));

  @override
  _$_CreateDateItemChanged get _value =>
      super._value as _$_CreateDateItemChanged;

  @override
  $Res call({
    Object? createDate = freezed,
  }) {
    return _then(_$_CreateDateItemChanged(
      createDate == freezed
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreateDateItemChanged implements _CreateDateItemChanged {
  const _$_CreateDateItemChanged(this.createDate);

  @override
  final String createDate;

  @override
  String toString() {
    return 'ItemCreaterUpdaterEvent.createDateItemChanged(createDate: $createDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateDateItemChanged &&
            const DeepCollectionEquality()
                .equals(other.createDate, createDate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(createDate));

  @JsonKey(ignore: true)
  @override
  _$$_CreateDateItemChangedCopyWith<_$_CreateDateItemChanged> get copyWith =>
      __$$_CreateDateItemChangedCopyWithImpl<_$_CreateDateItemChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<ItemProsCons> initialItemOption, bool isPro, String id)
        initialized,
    required TResult Function(String title) titleItemChanged,
    required TResult Function(int importance) importanceItemChanged,
    required TResult Function(String createDate) createDateItemChanged,
    required TResult Function(bool isPro) isProItemChanged,
    required TResult Function(String userId) userIdItemChanged,
    required TResult Function(String userName) userNameItemChanged,
    required TResult Function() saved,
  }) {
    return createDateItemChanged(createDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            Option<ItemProsCons> initialItemOption, bool isPro, String id)?
        initialized,
    TResult Function(String title)? titleItemChanged,
    TResult Function(int importance)? importanceItemChanged,
    TResult Function(String createDate)? createDateItemChanged,
    TResult Function(bool isPro)? isProItemChanged,
    TResult Function(String userId)? userIdItemChanged,
    TResult Function(String userName)? userNameItemChanged,
    TResult Function()? saved,
  }) {
    return createDateItemChanged?.call(createDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Option<ItemProsCons> initialItemOption, bool isPro, String id)?
        initialized,
    TResult Function(String title)? titleItemChanged,
    TResult Function(int importance)? importanceItemChanged,
    TResult Function(String createDate)? createDateItemChanged,
    TResult Function(bool isPro)? isProItemChanged,
    TResult Function(String userId)? userIdItemChanged,
    TResult Function(String userName)? userNameItemChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (createDateItemChanged != null) {
      return createDateItemChanged(createDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializedItem value) initialized,
    required TResult Function(_TitleItemChanged value) titleItemChanged,
    required TResult Function(_ImportanceItemChanged value)
        importanceItemChanged,
    required TResult Function(_CreateDateItemChanged value)
        createDateItemChanged,
    required TResult Function(_IsProItemChanged value) isProItemChanged,
    required TResult Function(_UserIdItemChanged value) userIdItemChanged,
    required TResult Function(_UserNameItemChanged value) userNameItemChanged,
    required TResult Function(_ItemSaved value) saved,
  }) {
    return createDateItemChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitializedItem value)? initialized,
    TResult Function(_TitleItemChanged value)? titleItemChanged,
    TResult Function(_ImportanceItemChanged value)? importanceItemChanged,
    TResult Function(_CreateDateItemChanged value)? createDateItemChanged,
    TResult Function(_IsProItemChanged value)? isProItemChanged,
    TResult Function(_UserIdItemChanged value)? userIdItemChanged,
    TResult Function(_UserNameItemChanged value)? userNameItemChanged,
    TResult Function(_ItemSaved value)? saved,
  }) {
    return createDateItemChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializedItem value)? initialized,
    TResult Function(_TitleItemChanged value)? titleItemChanged,
    TResult Function(_ImportanceItemChanged value)? importanceItemChanged,
    TResult Function(_CreateDateItemChanged value)? createDateItemChanged,
    TResult Function(_IsProItemChanged value)? isProItemChanged,
    TResult Function(_UserIdItemChanged value)? userIdItemChanged,
    TResult Function(_UserNameItemChanged value)? userNameItemChanged,
    TResult Function(_ItemSaved value)? saved,
    required TResult orElse(),
  }) {
    if (createDateItemChanged != null) {
      return createDateItemChanged(this);
    }
    return orElse();
  }
}

abstract class _CreateDateItemChanged implements ItemCreaterUpdaterEvent {
  const factory _CreateDateItemChanged(final String createDate) =
      _$_CreateDateItemChanged;

  String get createDate;
  @JsonKey(ignore: true)
  _$$_CreateDateItemChangedCopyWith<_$_CreateDateItemChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IsProItemChangedCopyWith<$Res> {
  factory _$$_IsProItemChangedCopyWith(
          _$_IsProItemChanged value, $Res Function(_$_IsProItemChanged) then) =
      __$$_IsProItemChangedCopyWithImpl<$Res>;
  $Res call({bool isPro});
}

/// @nodoc
class __$$_IsProItemChangedCopyWithImpl<$Res>
    extends _$ItemCreaterUpdaterEventCopyWithImpl<$Res>
    implements _$$_IsProItemChangedCopyWith<$Res> {
  __$$_IsProItemChangedCopyWithImpl(
      _$_IsProItemChanged _value, $Res Function(_$_IsProItemChanged) _then)
      : super(_value, (v) => _then(v as _$_IsProItemChanged));

  @override
  _$_IsProItemChanged get _value => super._value as _$_IsProItemChanged;

  @override
  $Res call({
    Object? isPro = freezed,
  }) {
    return _then(_$_IsProItemChanged(
      isPro == freezed
          ? _value.isPro
          : isPro // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_IsProItemChanged implements _IsProItemChanged {
  const _$_IsProItemChanged(this.isPro);

  @override
  final bool isPro;

  @override
  String toString() {
    return 'ItemCreaterUpdaterEvent.isProItemChanged(isPro: $isPro)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsProItemChanged &&
            const DeepCollectionEquality().equals(other.isPro, isPro));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isPro));

  @JsonKey(ignore: true)
  @override
  _$$_IsProItemChangedCopyWith<_$_IsProItemChanged> get copyWith =>
      __$$_IsProItemChangedCopyWithImpl<_$_IsProItemChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<ItemProsCons> initialItemOption, bool isPro, String id)
        initialized,
    required TResult Function(String title) titleItemChanged,
    required TResult Function(int importance) importanceItemChanged,
    required TResult Function(String createDate) createDateItemChanged,
    required TResult Function(bool isPro) isProItemChanged,
    required TResult Function(String userId) userIdItemChanged,
    required TResult Function(String userName) userNameItemChanged,
    required TResult Function() saved,
  }) {
    return isProItemChanged(isPro);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            Option<ItemProsCons> initialItemOption, bool isPro, String id)?
        initialized,
    TResult Function(String title)? titleItemChanged,
    TResult Function(int importance)? importanceItemChanged,
    TResult Function(String createDate)? createDateItemChanged,
    TResult Function(bool isPro)? isProItemChanged,
    TResult Function(String userId)? userIdItemChanged,
    TResult Function(String userName)? userNameItemChanged,
    TResult Function()? saved,
  }) {
    return isProItemChanged?.call(isPro);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Option<ItemProsCons> initialItemOption, bool isPro, String id)?
        initialized,
    TResult Function(String title)? titleItemChanged,
    TResult Function(int importance)? importanceItemChanged,
    TResult Function(String createDate)? createDateItemChanged,
    TResult Function(bool isPro)? isProItemChanged,
    TResult Function(String userId)? userIdItemChanged,
    TResult Function(String userName)? userNameItemChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (isProItemChanged != null) {
      return isProItemChanged(isPro);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializedItem value) initialized,
    required TResult Function(_TitleItemChanged value) titleItemChanged,
    required TResult Function(_ImportanceItemChanged value)
        importanceItemChanged,
    required TResult Function(_CreateDateItemChanged value)
        createDateItemChanged,
    required TResult Function(_IsProItemChanged value) isProItemChanged,
    required TResult Function(_UserIdItemChanged value) userIdItemChanged,
    required TResult Function(_UserNameItemChanged value) userNameItemChanged,
    required TResult Function(_ItemSaved value) saved,
  }) {
    return isProItemChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitializedItem value)? initialized,
    TResult Function(_TitleItemChanged value)? titleItemChanged,
    TResult Function(_ImportanceItemChanged value)? importanceItemChanged,
    TResult Function(_CreateDateItemChanged value)? createDateItemChanged,
    TResult Function(_IsProItemChanged value)? isProItemChanged,
    TResult Function(_UserIdItemChanged value)? userIdItemChanged,
    TResult Function(_UserNameItemChanged value)? userNameItemChanged,
    TResult Function(_ItemSaved value)? saved,
  }) {
    return isProItemChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializedItem value)? initialized,
    TResult Function(_TitleItemChanged value)? titleItemChanged,
    TResult Function(_ImportanceItemChanged value)? importanceItemChanged,
    TResult Function(_CreateDateItemChanged value)? createDateItemChanged,
    TResult Function(_IsProItemChanged value)? isProItemChanged,
    TResult Function(_UserIdItemChanged value)? userIdItemChanged,
    TResult Function(_UserNameItemChanged value)? userNameItemChanged,
    TResult Function(_ItemSaved value)? saved,
    required TResult orElse(),
  }) {
    if (isProItemChanged != null) {
      return isProItemChanged(this);
    }
    return orElse();
  }
}

abstract class _IsProItemChanged implements ItemCreaterUpdaterEvent {
  const factory _IsProItemChanged(final bool isPro) = _$_IsProItemChanged;

  bool get isPro;
  @JsonKey(ignore: true)
  _$$_IsProItemChangedCopyWith<_$_IsProItemChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserIdItemChangedCopyWith<$Res> {
  factory _$$_UserIdItemChangedCopyWith(_$_UserIdItemChanged value,
          $Res Function(_$_UserIdItemChanged) then) =
      __$$_UserIdItemChangedCopyWithImpl<$Res>;
  $Res call({String userId});
}

/// @nodoc
class __$$_UserIdItemChangedCopyWithImpl<$Res>
    extends _$ItemCreaterUpdaterEventCopyWithImpl<$Res>
    implements _$$_UserIdItemChangedCopyWith<$Res> {
  __$$_UserIdItemChangedCopyWithImpl(
      _$_UserIdItemChanged _value, $Res Function(_$_UserIdItemChanged) _then)
      : super(_value, (v) => _then(v as _$_UserIdItemChanged));

  @override
  _$_UserIdItemChanged get _value => super._value as _$_UserIdItemChanged;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_$_UserIdItemChanged(
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserIdItemChanged implements _UserIdItemChanged {
  const _$_UserIdItemChanged(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'ItemCreaterUpdaterEvent.userIdItemChanged(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserIdItemChanged &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$$_UserIdItemChangedCopyWith<_$_UserIdItemChanged> get copyWith =>
      __$$_UserIdItemChangedCopyWithImpl<_$_UserIdItemChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<ItemProsCons> initialItemOption, bool isPro, String id)
        initialized,
    required TResult Function(String title) titleItemChanged,
    required TResult Function(int importance) importanceItemChanged,
    required TResult Function(String createDate) createDateItemChanged,
    required TResult Function(bool isPro) isProItemChanged,
    required TResult Function(String userId) userIdItemChanged,
    required TResult Function(String userName) userNameItemChanged,
    required TResult Function() saved,
  }) {
    return userIdItemChanged(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            Option<ItemProsCons> initialItemOption, bool isPro, String id)?
        initialized,
    TResult Function(String title)? titleItemChanged,
    TResult Function(int importance)? importanceItemChanged,
    TResult Function(String createDate)? createDateItemChanged,
    TResult Function(bool isPro)? isProItemChanged,
    TResult Function(String userId)? userIdItemChanged,
    TResult Function(String userName)? userNameItemChanged,
    TResult Function()? saved,
  }) {
    return userIdItemChanged?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Option<ItemProsCons> initialItemOption, bool isPro, String id)?
        initialized,
    TResult Function(String title)? titleItemChanged,
    TResult Function(int importance)? importanceItemChanged,
    TResult Function(String createDate)? createDateItemChanged,
    TResult Function(bool isPro)? isProItemChanged,
    TResult Function(String userId)? userIdItemChanged,
    TResult Function(String userName)? userNameItemChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (userIdItemChanged != null) {
      return userIdItemChanged(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializedItem value) initialized,
    required TResult Function(_TitleItemChanged value) titleItemChanged,
    required TResult Function(_ImportanceItemChanged value)
        importanceItemChanged,
    required TResult Function(_CreateDateItemChanged value)
        createDateItemChanged,
    required TResult Function(_IsProItemChanged value) isProItemChanged,
    required TResult Function(_UserIdItemChanged value) userIdItemChanged,
    required TResult Function(_UserNameItemChanged value) userNameItemChanged,
    required TResult Function(_ItemSaved value) saved,
  }) {
    return userIdItemChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitializedItem value)? initialized,
    TResult Function(_TitleItemChanged value)? titleItemChanged,
    TResult Function(_ImportanceItemChanged value)? importanceItemChanged,
    TResult Function(_CreateDateItemChanged value)? createDateItemChanged,
    TResult Function(_IsProItemChanged value)? isProItemChanged,
    TResult Function(_UserIdItemChanged value)? userIdItemChanged,
    TResult Function(_UserNameItemChanged value)? userNameItemChanged,
    TResult Function(_ItemSaved value)? saved,
  }) {
    return userIdItemChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializedItem value)? initialized,
    TResult Function(_TitleItemChanged value)? titleItemChanged,
    TResult Function(_ImportanceItemChanged value)? importanceItemChanged,
    TResult Function(_CreateDateItemChanged value)? createDateItemChanged,
    TResult Function(_IsProItemChanged value)? isProItemChanged,
    TResult Function(_UserIdItemChanged value)? userIdItemChanged,
    TResult Function(_UserNameItemChanged value)? userNameItemChanged,
    TResult Function(_ItemSaved value)? saved,
    required TResult orElse(),
  }) {
    if (userIdItemChanged != null) {
      return userIdItemChanged(this);
    }
    return orElse();
  }
}

abstract class _UserIdItemChanged implements ItemCreaterUpdaterEvent {
  const factory _UserIdItemChanged(final String userId) = _$_UserIdItemChanged;

  String get userId;
  @JsonKey(ignore: true)
  _$$_UserIdItemChangedCopyWith<_$_UserIdItemChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserNameItemChangedCopyWith<$Res> {
  factory _$$_UserNameItemChangedCopyWith(_$_UserNameItemChanged value,
          $Res Function(_$_UserNameItemChanged) then) =
      __$$_UserNameItemChangedCopyWithImpl<$Res>;
  $Res call({String userName});
}

/// @nodoc
class __$$_UserNameItemChangedCopyWithImpl<$Res>
    extends _$ItemCreaterUpdaterEventCopyWithImpl<$Res>
    implements _$$_UserNameItemChangedCopyWith<$Res> {
  __$$_UserNameItemChangedCopyWithImpl(_$_UserNameItemChanged _value,
      $Res Function(_$_UserNameItemChanged) _then)
      : super(_value, (v) => _then(v as _$_UserNameItemChanged));

  @override
  _$_UserNameItemChanged get _value => super._value as _$_UserNameItemChanged;

  @override
  $Res call({
    Object? userName = freezed,
  }) {
    return _then(_$_UserNameItemChanged(
      userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserNameItemChanged implements _UserNameItemChanged {
  const _$_UserNameItemChanged(this.userName);

  @override
  final String userName;

  @override
  String toString() {
    return 'ItemCreaterUpdaterEvent.userNameItemChanged(userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserNameItemChanged &&
            const DeepCollectionEquality().equals(other.userName, userName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userName));

  @JsonKey(ignore: true)
  @override
  _$$_UserNameItemChangedCopyWith<_$_UserNameItemChanged> get copyWith =>
      __$$_UserNameItemChangedCopyWithImpl<_$_UserNameItemChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<ItemProsCons> initialItemOption, bool isPro, String id)
        initialized,
    required TResult Function(String title) titleItemChanged,
    required TResult Function(int importance) importanceItemChanged,
    required TResult Function(String createDate) createDateItemChanged,
    required TResult Function(bool isPro) isProItemChanged,
    required TResult Function(String userId) userIdItemChanged,
    required TResult Function(String userName) userNameItemChanged,
    required TResult Function() saved,
  }) {
    return userNameItemChanged(userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            Option<ItemProsCons> initialItemOption, bool isPro, String id)?
        initialized,
    TResult Function(String title)? titleItemChanged,
    TResult Function(int importance)? importanceItemChanged,
    TResult Function(String createDate)? createDateItemChanged,
    TResult Function(bool isPro)? isProItemChanged,
    TResult Function(String userId)? userIdItemChanged,
    TResult Function(String userName)? userNameItemChanged,
    TResult Function()? saved,
  }) {
    return userNameItemChanged?.call(userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Option<ItemProsCons> initialItemOption, bool isPro, String id)?
        initialized,
    TResult Function(String title)? titleItemChanged,
    TResult Function(int importance)? importanceItemChanged,
    TResult Function(String createDate)? createDateItemChanged,
    TResult Function(bool isPro)? isProItemChanged,
    TResult Function(String userId)? userIdItemChanged,
    TResult Function(String userName)? userNameItemChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (userNameItemChanged != null) {
      return userNameItemChanged(userName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializedItem value) initialized,
    required TResult Function(_TitleItemChanged value) titleItemChanged,
    required TResult Function(_ImportanceItemChanged value)
        importanceItemChanged,
    required TResult Function(_CreateDateItemChanged value)
        createDateItemChanged,
    required TResult Function(_IsProItemChanged value) isProItemChanged,
    required TResult Function(_UserIdItemChanged value) userIdItemChanged,
    required TResult Function(_UserNameItemChanged value) userNameItemChanged,
    required TResult Function(_ItemSaved value) saved,
  }) {
    return userNameItemChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitializedItem value)? initialized,
    TResult Function(_TitleItemChanged value)? titleItemChanged,
    TResult Function(_ImportanceItemChanged value)? importanceItemChanged,
    TResult Function(_CreateDateItemChanged value)? createDateItemChanged,
    TResult Function(_IsProItemChanged value)? isProItemChanged,
    TResult Function(_UserIdItemChanged value)? userIdItemChanged,
    TResult Function(_UserNameItemChanged value)? userNameItemChanged,
    TResult Function(_ItemSaved value)? saved,
  }) {
    return userNameItemChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializedItem value)? initialized,
    TResult Function(_TitleItemChanged value)? titleItemChanged,
    TResult Function(_ImportanceItemChanged value)? importanceItemChanged,
    TResult Function(_CreateDateItemChanged value)? createDateItemChanged,
    TResult Function(_IsProItemChanged value)? isProItemChanged,
    TResult Function(_UserIdItemChanged value)? userIdItemChanged,
    TResult Function(_UserNameItemChanged value)? userNameItemChanged,
    TResult Function(_ItemSaved value)? saved,
    required TResult orElse(),
  }) {
    if (userNameItemChanged != null) {
      return userNameItemChanged(this);
    }
    return orElse();
  }
}

abstract class _UserNameItemChanged implements ItemCreaterUpdaterEvent {
  const factory _UserNameItemChanged(final String userName) =
      _$_UserNameItemChanged;

  String get userName;
  @JsonKey(ignore: true)
  _$$_UserNameItemChangedCopyWith<_$_UserNameItemChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ItemSavedCopyWith<$Res> {
  factory _$$_ItemSavedCopyWith(
          _$_ItemSaved value, $Res Function(_$_ItemSaved) then) =
      __$$_ItemSavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ItemSavedCopyWithImpl<$Res>
    extends _$ItemCreaterUpdaterEventCopyWithImpl<$Res>
    implements _$$_ItemSavedCopyWith<$Res> {
  __$$_ItemSavedCopyWithImpl(
      _$_ItemSaved _value, $Res Function(_$_ItemSaved) _then)
      : super(_value, (v) => _then(v as _$_ItemSaved));

  @override
  _$_ItemSaved get _value => super._value as _$_ItemSaved;
}

/// @nodoc

class _$_ItemSaved implements _ItemSaved {
  const _$_ItemSaved();

  @override
  String toString() {
    return 'ItemCreaterUpdaterEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ItemSaved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<ItemProsCons> initialItemOption, bool isPro, String id)
        initialized,
    required TResult Function(String title) titleItemChanged,
    required TResult Function(int importance) importanceItemChanged,
    required TResult Function(String createDate) createDateItemChanged,
    required TResult Function(bool isPro) isProItemChanged,
    required TResult Function(String userId) userIdItemChanged,
    required TResult Function(String userName) userNameItemChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            Option<ItemProsCons> initialItemOption, bool isPro, String id)?
        initialized,
    TResult Function(String title)? titleItemChanged,
    TResult Function(int importance)? importanceItemChanged,
    TResult Function(String createDate)? createDateItemChanged,
    TResult Function(bool isPro)? isProItemChanged,
    TResult Function(String userId)? userIdItemChanged,
    TResult Function(String userName)? userNameItemChanged,
    TResult Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Option<ItemProsCons> initialItemOption, bool isPro, String id)?
        initialized,
    TResult Function(String title)? titleItemChanged,
    TResult Function(int importance)? importanceItemChanged,
    TResult Function(String createDate)? createDateItemChanged,
    TResult Function(bool isPro)? isProItemChanged,
    TResult Function(String userId)? userIdItemChanged,
    TResult Function(String userName)? userNameItemChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializedItem value) initialized,
    required TResult Function(_TitleItemChanged value) titleItemChanged,
    required TResult Function(_ImportanceItemChanged value)
        importanceItemChanged,
    required TResult Function(_CreateDateItemChanged value)
        createDateItemChanged,
    required TResult Function(_IsProItemChanged value) isProItemChanged,
    required TResult Function(_UserIdItemChanged value) userIdItemChanged,
    required TResult Function(_UserNameItemChanged value) userNameItemChanged,
    required TResult Function(_ItemSaved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitializedItem value)? initialized,
    TResult Function(_TitleItemChanged value)? titleItemChanged,
    TResult Function(_ImportanceItemChanged value)? importanceItemChanged,
    TResult Function(_CreateDateItemChanged value)? createDateItemChanged,
    TResult Function(_IsProItemChanged value)? isProItemChanged,
    TResult Function(_UserIdItemChanged value)? userIdItemChanged,
    TResult Function(_UserNameItemChanged value)? userNameItemChanged,
    TResult Function(_ItemSaved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializedItem value)? initialized,
    TResult Function(_TitleItemChanged value)? titleItemChanged,
    TResult Function(_ImportanceItemChanged value)? importanceItemChanged,
    TResult Function(_CreateDateItemChanged value)? createDateItemChanged,
    TResult Function(_IsProItemChanged value)? isProItemChanged,
    TResult Function(_UserIdItemChanged value)? userIdItemChanged,
    TResult Function(_UserNameItemChanged value)? userNameItemChanged,
    TResult Function(_ItemSaved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _ItemSaved implements ItemCreaterUpdaterEvent {
  const factory _ItemSaved() = _$_ItemSaved;
}

/// @nodoc
mixin _$ItemCreaterUpdaterState {
  String? get id => throw _privateConstructorUsedError;
  ItemProsCons? get item => throw _privateConstructorUsedError;
  bool? get isPro => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<ListProsConsFailure, Unit>>? get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemCreaterUpdaterStateCopyWith<ItemCreaterUpdaterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCreaterUpdaterStateCopyWith<$Res> {
  factory $ItemCreaterUpdaterStateCopyWith(ItemCreaterUpdaterState value,
          $Res Function(ItemCreaterUpdaterState) then) =
      _$ItemCreaterUpdaterStateCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      ItemProsCons? item,
      bool? isPro,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<ListProsConsFailure, Unit>>? saveFailureOrSuccessOption});

  $ItemProsConsCopyWith<$Res>? get item;
}

/// @nodoc
class _$ItemCreaterUpdaterStateCopyWithImpl<$Res>
    implements $ItemCreaterUpdaterStateCopyWith<$Res> {
  _$ItemCreaterUpdaterStateCopyWithImpl(this._value, this._then);

  final ItemCreaterUpdaterState _value;
  // ignore: unused_field
  final $Res Function(ItemCreaterUpdaterState) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? item = freezed,
    Object? isPro = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemProsCons?,
      isPro: isPro == freezed
          ? _value.isPro
          : isPro // ignore: cast_nullable_to_non_nullable
              as bool?,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ListProsConsFailure, Unit>>?,
    ));
  }

  @override
  $ItemProsConsCopyWith<$Res>? get item {
    if (_value.item == null) {
      return null;
    }

    return $ItemProsConsCopyWith<$Res>(_value.item!, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc
abstract class _$$_ItemCreaterUpdaterStateCopyWith<$Res>
    implements $ItemCreaterUpdaterStateCopyWith<$Res> {
  factory _$$_ItemCreaterUpdaterStateCopyWith(_$_ItemCreaterUpdaterState value,
          $Res Function(_$_ItemCreaterUpdaterState) then) =
      __$$_ItemCreaterUpdaterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      ItemProsCons? item,
      bool? isPro,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<ListProsConsFailure, Unit>>? saveFailureOrSuccessOption});

  @override
  $ItemProsConsCopyWith<$Res>? get item;
}

/// @nodoc
class __$$_ItemCreaterUpdaterStateCopyWithImpl<$Res>
    extends _$ItemCreaterUpdaterStateCopyWithImpl<$Res>
    implements _$$_ItemCreaterUpdaterStateCopyWith<$Res> {
  __$$_ItemCreaterUpdaterStateCopyWithImpl(_$_ItemCreaterUpdaterState _value,
      $Res Function(_$_ItemCreaterUpdaterState) _then)
      : super(_value, (v) => _then(v as _$_ItemCreaterUpdaterState));

  @override
  _$_ItemCreaterUpdaterState get _value =>
      super._value as _$_ItemCreaterUpdaterState;

  @override
  $Res call({
    Object? id = freezed,
    Object? item = freezed,
    Object? isPro = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_$_ItemCreaterUpdaterState(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemProsCons?,
      isPro: isPro == freezed
          ? _value.isPro
          : isPro // ignore: cast_nullable_to_non_nullable
              as bool?,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ListProsConsFailure, Unit>>?,
    ));
  }
}

/// @nodoc

class _$_ItemCreaterUpdaterState implements _ItemCreaterUpdaterState {
  const _$_ItemCreaterUpdaterState(
      {this.id,
      this.item,
      this.isPro,
      this.showErrorMessages = false,
      this.isEditing = false,
      this.isSaving = false,
      this.saveFailureOrSuccessOption});

  @override
  final String? id;
  @override
  final ItemProsCons? item;
  @override
  final bool? isPro;
  @override
  @JsonKey()
  final bool showErrorMessages;
  @override
  @JsonKey()
  final bool isEditing;
  @override
  @JsonKey()
  final bool isSaving;
  @override
  final Option<Either<ListProsConsFailure, Unit>>? saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'ItemCreaterUpdaterState(id: $id, item: $item, isPro: $isPro, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemCreaterUpdaterState &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.item, item) &&
            const DeepCollectionEquality().equals(other.isPro, isPro) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality().equals(other.isEditing, isEditing) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving) &&
            const DeepCollectionEquality().equals(
                other.saveFailureOrSuccessOption, saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(item),
      const DeepCollectionEquality().hash(isPro),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isEditing),
      const DeepCollectionEquality().hash(isSaving),
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$$_ItemCreaterUpdaterStateCopyWith<_$_ItemCreaterUpdaterState>
      get copyWith =>
          __$$_ItemCreaterUpdaterStateCopyWithImpl<_$_ItemCreaterUpdaterState>(
              this, _$identity);
}

abstract class _ItemCreaterUpdaterState implements ItemCreaterUpdaterState {
  const factory _ItemCreaterUpdaterState(
      {final String? id,
      final ItemProsCons? item,
      final bool? isPro,
      final bool showErrorMessages,
      final bool isEditing,
      final bool isSaving,
      final Option<Either<ListProsConsFailure, Unit>>?
          saveFailureOrSuccessOption}) = _$_ItemCreaterUpdaterState;

  @override
  String? get id;
  @override
  ItemProsCons? get item;
  @override
  bool? get isPro;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<ListProsConsFailure, Unit>>? get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_ItemCreaterUpdaterStateCopyWith<_$_ItemCreaterUpdaterState>
      get copyWith => throw _privateConstructorUsedError;
}
