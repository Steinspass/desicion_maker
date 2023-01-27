// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'watcher_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<ListProsCons> lists) loadSuccess,
    required TResult Function(KtList<ItemProsCons> items) loadSuccessItem,
    required TResult Function(ListProsConsFailure noteFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ListProsCons> lists)? loadSuccess,
    TResult Function(KtList<ItemProsCons> items)? loadSuccessItem,
    TResult Function(ListProsConsFailure noteFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ListProsCons> lists)? loadSuccess,
    TResult Function(KtList<ItemProsCons> items)? loadSuccessItem,
    TResult Function(ListProsConsFailure noteFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(DataTransferInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadSuccessItems value) loadSuccessItem,
    required TResult Function(LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DataTransferInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadSuccessItems value)? loadSuccessItem,
    TResult Function(LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DataTransferInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadSuccessItems value)? loadSuccessItem,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatcherStateCopyWith<$Res> {
  factory $WatcherStateCopyWith(
          WatcherState value, $Res Function(WatcherState) then) =
      _$WatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatcherStateCopyWithImpl<$Res> implements $WatcherStateCopyWith<$Res> {
  _$WatcherStateCopyWithImpl(this._value, this._then);

  final WatcherState _value;
  // ignore: unused_field
  final $Res Function(WatcherState) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res> extends _$WatcherStateCopyWithImpl<$Res>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, (v) => _then(v as _$Initial));

  @override
  _$Initial get _value => super._value as _$Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'WatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<ListProsCons> lists) loadSuccess,
    required TResult Function(KtList<ItemProsCons> items) loadSuccessItem,
    required TResult Function(ListProsConsFailure noteFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ListProsCons> lists)? loadSuccess,
    TResult Function(KtList<ItemProsCons> items)? loadSuccessItem,
    TResult Function(ListProsConsFailure noteFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ListProsCons> lists)? loadSuccess,
    TResult Function(KtList<ItemProsCons> items)? loadSuccessItem,
    TResult Function(ListProsConsFailure noteFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(DataTransferInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadSuccessItems value) loadSuccessItem,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DataTransferInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadSuccessItems value)? loadSuccessItem,
    TResult Function(LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DataTransferInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadSuccessItems value)? loadSuccessItem,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements WatcherState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$DataTransferInProgressCopyWith<$Res> {
  factory _$$DataTransferInProgressCopyWith(_$DataTransferInProgress value,
          $Res Function(_$DataTransferInProgress) then) =
      __$$DataTransferInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DataTransferInProgressCopyWithImpl<$Res>
    extends _$WatcherStateCopyWithImpl<$Res>
    implements _$$DataTransferInProgressCopyWith<$Res> {
  __$$DataTransferInProgressCopyWithImpl(_$DataTransferInProgress _value,
      $Res Function(_$DataTransferInProgress) _then)
      : super(_value, (v) => _then(v as _$DataTransferInProgress));

  @override
  _$DataTransferInProgress get _value =>
      super._value as _$DataTransferInProgress;
}

/// @nodoc

class _$DataTransferInProgress implements DataTransferInProgress {
  const _$DataTransferInProgress();

  @override
  String toString() {
    return 'WatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DataTransferInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<ListProsCons> lists) loadSuccess,
    required TResult Function(KtList<ItemProsCons> items) loadSuccessItem,
    required TResult Function(ListProsConsFailure noteFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ListProsCons> lists)? loadSuccess,
    TResult Function(KtList<ItemProsCons> items)? loadSuccessItem,
    TResult Function(ListProsConsFailure noteFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ListProsCons> lists)? loadSuccess,
    TResult Function(KtList<ItemProsCons> items)? loadSuccessItem,
    TResult Function(ListProsConsFailure noteFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(DataTransferInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadSuccessItems value) loadSuccessItem,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DataTransferInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadSuccessItems value)? loadSuccessItem,
    TResult Function(LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DataTransferInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadSuccessItems value)? loadSuccessItem,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class DataTransferInProgress implements WatcherState {
  const factory DataTransferInProgress() = _$DataTransferInProgress;
}

/// @nodoc
abstract class _$$LoadSuccessCopyWith<$Res> {
  factory _$$LoadSuccessCopyWith(
          _$LoadSuccess value, $Res Function(_$LoadSuccess) then) =
      __$$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<ListProsCons> lists});
}

/// @nodoc
class __$$LoadSuccessCopyWithImpl<$Res> extends _$WatcherStateCopyWithImpl<$Res>
    implements _$$LoadSuccessCopyWith<$Res> {
  __$$LoadSuccessCopyWithImpl(
      _$LoadSuccess _value, $Res Function(_$LoadSuccess) _then)
      : super(_value, (v) => _then(v as _$LoadSuccess));

  @override
  _$LoadSuccess get _value => super._value as _$LoadSuccess;

  @override
  $Res call({
    Object? lists = freezed,
  }) {
    return _then(_$LoadSuccess(
      lists == freezed
          ? _value.lists
          : lists // ignore: cast_nullable_to_non_nullable
              as KtList<ListProsCons>,
    ));
  }
}

/// @nodoc

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.lists);

  @override
  final KtList<ListProsCons> lists;

  @override
  String toString() {
    return 'WatcherState.loadSuccess(lists: $lists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSuccess &&
            const DeepCollectionEquality().equals(other.lists, lists));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(lists));

  @JsonKey(ignore: true)
  @override
  _$$LoadSuccessCopyWith<_$LoadSuccess> get copyWith =>
      __$$LoadSuccessCopyWithImpl<_$LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<ListProsCons> lists) loadSuccess,
    required TResult Function(KtList<ItemProsCons> items) loadSuccessItem,
    required TResult Function(ListProsConsFailure noteFailure) loadFailure,
  }) {
    return loadSuccess(lists);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ListProsCons> lists)? loadSuccess,
    TResult Function(KtList<ItemProsCons> items)? loadSuccessItem,
    TResult Function(ListProsConsFailure noteFailure)? loadFailure,
  }) {
    return loadSuccess?.call(lists);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ListProsCons> lists)? loadSuccess,
    TResult Function(KtList<ItemProsCons> items)? loadSuccessItem,
    TResult Function(ListProsConsFailure noteFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(lists);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(DataTransferInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadSuccessItems value) loadSuccessItem,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DataTransferInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadSuccessItems value)? loadSuccessItem,
    TResult Function(LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DataTransferInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadSuccessItems value)? loadSuccessItem,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements WatcherState {
  const factory LoadSuccess(final KtList<ListProsCons> lists) = _$LoadSuccess;

  KtList<ListProsCons> get lists;
  @JsonKey(ignore: true)
  _$$LoadSuccessCopyWith<_$LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadSuccessItemsCopyWith<$Res> {
  factory _$$LoadSuccessItemsCopyWith(
          _$LoadSuccessItems value, $Res Function(_$LoadSuccessItems) then) =
      __$$LoadSuccessItemsCopyWithImpl<$Res>;
  $Res call({KtList<ItemProsCons> items});
}

/// @nodoc
class __$$LoadSuccessItemsCopyWithImpl<$Res>
    extends _$WatcherStateCopyWithImpl<$Res>
    implements _$$LoadSuccessItemsCopyWith<$Res> {
  __$$LoadSuccessItemsCopyWithImpl(
      _$LoadSuccessItems _value, $Res Function(_$LoadSuccessItems) _then)
      : super(_value, (v) => _then(v as _$LoadSuccessItems));

  @override
  _$LoadSuccessItems get _value => super._value as _$LoadSuccessItems;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$LoadSuccessItems(
      items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as KtList<ItemProsCons>,
    ));
  }
}

/// @nodoc

class _$LoadSuccessItems implements LoadSuccessItems {
  const _$LoadSuccessItems(this.items);

  @override
  final KtList<ItemProsCons> items;

  @override
  String toString() {
    return 'WatcherState.loadSuccessItem(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSuccessItems &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(items));

  @JsonKey(ignore: true)
  @override
  _$$LoadSuccessItemsCopyWith<_$LoadSuccessItems> get copyWith =>
      __$$LoadSuccessItemsCopyWithImpl<_$LoadSuccessItems>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<ListProsCons> lists) loadSuccess,
    required TResult Function(KtList<ItemProsCons> items) loadSuccessItem,
    required TResult Function(ListProsConsFailure noteFailure) loadFailure,
  }) {
    return loadSuccessItem(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ListProsCons> lists)? loadSuccess,
    TResult Function(KtList<ItemProsCons> items)? loadSuccessItem,
    TResult Function(ListProsConsFailure noteFailure)? loadFailure,
  }) {
    return loadSuccessItem?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ListProsCons> lists)? loadSuccess,
    TResult Function(KtList<ItemProsCons> items)? loadSuccessItem,
    TResult Function(ListProsConsFailure noteFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccessItem != null) {
      return loadSuccessItem(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(DataTransferInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadSuccessItems value) loadSuccessItem,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadSuccessItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DataTransferInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadSuccessItems value)? loadSuccessItem,
    TResult Function(LoadFailure value)? loadFailure,
  }) {
    return loadSuccessItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DataTransferInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadSuccessItems value)? loadSuccessItem,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccessItem != null) {
      return loadSuccessItem(this);
    }
    return orElse();
  }
}

abstract class LoadSuccessItems implements WatcherState {
  const factory LoadSuccessItems(final KtList<ItemProsCons> items) =
      _$LoadSuccessItems;

  KtList<ItemProsCons> get items;
  @JsonKey(ignore: true)
  _$$LoadSuccessItemsCopyWith<_$LoadSuccessItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadFailureCopyWith<$Res> {
  factory _$$LoadFailureCopyWith(
          _$LoadFailure value, $Res Function(_$LoadFailure) then) =
      __$$LoadFailureCopyWithImpl<$Res>;
  $Res call({ListProsConsFailure noteFailure});

  $ListProsConsFailureCopyWith<$Res> get noteFailure;
}

/// @nodoc
class __$$LoadFailureCopyWithImpl<$Res> extends _$WatcherStateCopyWithImpl<$Res>
    implements _$$LoadFailureCopyWith<$Res> {
  __$$LoadFailureCopyWithImpl(
      _$LoadFailure _value, $Res Function(_$LoadFailure) _then)
      : super(_value, (v) => _then(v as _$LoadFailure));

  @override
  _$LoadFailure get _value => super._value as _$LoadFailure;

  @override
  $Res call({
    Object? noteFailure = freezed,
  }) {
    return _then(_$LoadFailure(
      noteFailure == freezed
          ? _value.noteFailure
          : noteFailure // ignore: cast_nullable_to_non_nullable
              as ListProsConsFailure,
    ));
  }

  @override
  $ListProsConsFailureCopyWith<$Res> get noteFailure {
    return $ListProsConsFailureCopyWith<$Res>(_value.noteFailure, (value) {
      return _then(_value.copyWith(noteFailure: value));
    });
  }
}

/// @nodoc

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.noteFailure);

  @override
  final ListProsConsFailure noteFailure;

  @override
  String toString() {
    return 'WatcherState.loadFailure(noteFailure: $noteFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFailure &&
            const DeepCollectionEquality()
                .equals(other.noteFailure, noteFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(noteFailure));

  @JsonKey(ignore: true)
  @override
  _$$LoadFailureCopyWith<_$LoadFailure> get copyWith =>
      __$$LoadFailureCopyWithImpl<_$LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<ListProsCons> lists) loadSuccess,
    required TResult Function(KtList<ItemProsCons> items) loadSuccessItem,
    required TResult Function(ListProsConsFailure noteFailure) loadFailure,
  }) {
    return loadFailure(noteFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ListProsCons> lists)? loadSuccess,
    TResult Function(KtList<ItemProsCons> items)? loadSuccessItem,
    TResult Function(ListProsConsFailure noteFailure)? loadFailure,
  }) {
    return loadFailure?.call(noteFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ListProsCons> lists)? loadSuccess,
    TResult Function(KtList<ItemProsCons> items)? loadSuccessItem,
    TResult Function(ListProsConsFailure noteFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(noteFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(DataTransferInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadSuccessItems value) loadSuccessItem,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DataTransferInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadSuccessItems value)? loadSuccessItem,
    TResult Function(LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DataTransferInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadSuccessItems value)? loadSuccessItem,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements WatcherState {
  const factory LoadFailure(final ListProsConsFailure noteFailure) =
      _$LoadFailure;

  ListProsConsFailure get noteFailure;
  @JsonKey(ignore: true)
  _$$LoadFailureCopyWith<_$LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
