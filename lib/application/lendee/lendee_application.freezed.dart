// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'lendee_application.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LendeeApplication {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Lendee> lendeeData) loaded,
    required TResult Function(List<LendeeHistory> lendeeData) dataLoadedHistory,
    required TResult Function() added,
    required TResult Function() loading,
    required TResult Function() deleted,
    required TResult Function() update,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Lendee> lendeeData)? loaded,
    TResult Function(List<LendeeHistory> lendeeData)? dataLoadedHistory,
    TResult Function()? added,
    TResult Function()? loading,
    TResult Function()? deleted,
    TResult Function()? update,
    TResult Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Lendee> lendeeData)? loaded,
    TResult Function(List<LendeeHistory> lendeeData)? dataLoadedHistory,
    TResult Function()? added,
    TResult Function()? loading,
    TResult Function()? deleted,
    TResult Function()? update,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LendeeDataLoaded value) loaded,
    required TResult Function(LendeeDataLoadedHistory value) dataLoadedHistory,
    required TResult Function(LendeeAdded value) added,
    required TResult Function(LendeeLoading value) loading,
    required TResult Function(LendeeDeleted value) deleted,
    required TResult Function(LendeeUpdated value) update,
    required TResult Function(LendeeErrorDetails value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LendeeDataLoaded value)? loaded,
    TResult Function(LendeeDataLoadedHistory value)? dataLoadedHistory,
    TResult Function(LendeeAdded value)? added,
    TResult Function(LendeeLoading value)? loading,
    TResult Function(LendeeDeleted value)? deleted,
    TResult Function(LendeeUpdated value)? update,
    TResult Function(LendeeErrorDetails value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LendeeDataLoaded value)? loaded,
    TResult Function(LendeeDataLoadedHistory value)? dataLoadedHistory,
    TResult Function(LendeeAdded value)? added,
    TResult Function(LendeeLoading value)? loading,
    TResult Function(LendeeDeleted value)? deleted,
    TResult Function(LendeeUpdated value)? update,
    TResult Function(LendeeErrorDetails value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LendeeApplicationCopyWith<$Res> {
  factory $LendeeApplicationCopyWith(
          LendeeApplication value, $Res Function(LendeeApplication) then) =
      _$LendeeApplicationCopyWithImpl<$Res>;
}

/// @nodoc
class _$LendeeApplicationCopyWithImpl<$Res>
    implements $LendeeApplicationCopyWith<$Res> {
  _$LendeeApplicationCopyWithImpl(this._value, this._then);

  final LendeeApplication _value;
  // ignore: unused_field
  final $Res Function(LendeeApplication) _then;
}

/// @nodoc
abstract class _$$LendeeDataLoadedCopyWith<$Res> {
  factory _$$LendeeDataLoadedCopyWith(
          _$LendeeDataLoaded value, $Res Function(_$LendeeDataLoaded) then) =
      __$$LendeeDataLoadedCopyWithImpl<$Res>;
  $Res call({List<Lendee> lendeeData});
}

/// @nodoc
class __$$LendeeDataLoadedCopyWithImpl<$Res>
    extends _$LendeeApplicationCopyWithImpl<$Res>
    implements _$$LendeeDataLoadedCopyWith<$Res> {
  __$$LendeeDataLoadedCopyWithImpl(
      _$LendeeDataLoaded _value, $Res Function(_$LendeeDataLoaded) _then)
      : super(_value, (v) => _then(v as _$LendeeDataLoaded));

  @override
  _$LendeeDataLoaded get _value => super._value as _$LendeeDataLoaded;

  @override
  $Res call({
    Object? lendeeData = freezed,
  }) {
    return _then(_$LendeeDataLoaded(
      lendeeData == freezed
          ? _value._lendeeData
          : lendeeData // ignore: cast_nullable_to_non_nullable
              as List<Lendee>,
    ));
  }
}

/// @nodoc

class _$LendeeDataLoaded implements LendeeDataLoaded {
  const _$LendeeDataLoaded(final List<Lendee> lendeeData)
      : _lendeeData = lendeeData;

  final List<Lendee> _lendeeData;
  @override
  List<Lendee> get lendeeData {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lendeeData);
  }

  @override
  String toString() {
    return 'LendeeApplication.loaded(lendeeData: $lendeeData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LendeeDataLoaded &&
            const DeepCollectionEquality()
                .equals(other._lendeeData, _lendeeData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_lendeeData));

  @JsonKey(ignore: true)
  @override
  _$$LendeeDataLoadedCopyWith<_$LendeeDataLoaded> get copyWith =>
      __$$LendeeDataLoadedCopyWithImpl<_$LendeeDataLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Lendee> lendeeData) loaded,
    required TResult Function(List<LendeeHistory> lendeeData) dataLoadedHistory,
    required TResult Function() added,
    required TResult Function() loading,
    required TResult Function() deleted,
    required TResult Function() update,
    required TResult Function(String? message) error,
  }) {
    return loaded(lendeeData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Lendee> lendeeData)? loaded,
    TResult Function(List<LendeeHistory> lendeeData)? dataLoadedHistory,
    TResult Function()? added,
    TResult Function()? loading,
    TResult Function()? deleted,
    TResult Function()? update,
    TResult Function(String? message)? error,
  }) {
    return loaded?.call(lendeeData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Lendee> lendeeData)? loaded,
    TResult Function(List<LendeeHistory> lendeeData)? dataLoadedHistory,
    TResult Function()? added,
    TResult Function()? loading,
    TResult Function()? deleted,
    TResult Function()? update,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(lendeeData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LendeeDataLoaded value) loaded,
    required TResult Function(LendeeDataLoadedHistory value) dataLoadedHistory,
    required TResult Function(LendeeAdded value) added,
    required TResult Function(LendeeLoading value) loading,
    required TResult Function(LendeeDeleted value) deleted,
    required TResult Function(LendeeUpdated value) update,
    required TResult Function(LendeeErrorDetails value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LendeeDataLoaded value)? loaded,
    TResult Function(LendeeDataLoadedHistory value)? dataLoadedHistory,
    TResult Function(LendeeAdded value)? added,
    TResult Function(LendeeLoading value)? loading,
    TResult Function(LendeeDeleted value)? deleted,
    TResult Function(LendeeUpdated value)? update,
    TResult Function(LendeeErrorDetails value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LendeeDataLoaded value)? loaded,
    TResult Function(LendeeDataLoadedHistory value)? dataLoadedHistory,
    TResult Function(LendeeAdded value)? added,
    TResult Function(LendeeLoading value)? loading,
    TResult Function(LendeeDeleted value)? deleted,
    TResult Function(LendeeUpdated value)? update,
    TResult Function(LendeeErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LendeeDataLoaded implements LendeeApplication {
  const factory LendeeDataLoaded(final List<Lendee> lendeeData) =
      _$LendeeDataLoaded;

  List<Lendee> get lendeeData;
  @JsonKey(ignore: true)
  _$$LendeeDataLoadedCopyWith<_$LendeeDataLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LendeeDataLoadedHistoryCopyWith<$Res> {
  factory _$$LendeeDataLoadedHistoryCopyWith(_$LendeeDataLoadedHistory value,
          $Res Function(_$LendeeDataLoadedHistory) then) =
      __$$LendeeDataLoadedHistoryCopyWithImpl<$Res>;
  $Res call({List<LendeeHistory> lendeeData});
}

/// @nodoc
class __$$LendeeDataLoadedHistoryCopyWithImpl<$Res>
    extends _$LendeeApplicationCopyWithImpl<$Res>
    implements _$$LendeeDataLoadedHistoryCopyWith<$Res> {
  __$$LendeeDataLoadedHistoryCopyWithImpl(_$LendeeDataLoadedHistory _value,
      $Res Function(_$LendeeDataLoadedHistory) _then)
      : super(_value, (v) => _then(v as _$LendeeDataLoadedHistory));

  @override
  _$LendeeDataLoadedHistory get _value =>
      super._value as _$LendeeDataLoadedHistory;

  @override
  $Res call({
    Object? lendeeData = freezed,
  }) {
    return _then(_$LendeeDataLoadedHistory(
      lendeeData == freezed
          ? _value._lendeeData
          : lendeeData // ignore: cast_nullable_to_non_nullable
              as List<LendeeHistory>,
    ));
  }
}

/// @nodoc

class _$LendeeDataLoadedHistory implements LendeeDataLoadedHistory {
  const _$LendeeDataLoadedHistory(final List<LendeeHistory> lendeeData)
      : _lendeeData = lendeeData;

  final List<LendeeHistory> _lendeeData;
  @override
  List<LendeeHistory> get lendeeData {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lendeeData);
  }

  @override
  String toString() {
    return 'LendeeApplication.dataLoadedHistory(lendeeData: $lendeeData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LendeeDataLoadedHistory &&
            const DeepCollectionEquality()
                .equals(other._lendeeData, _lendeeData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_lendeeData));

  @JsonKey(ignore: true)
  @override
  _$$LendeeDataLoadedHistoryCopyWith<_$LendeeDataLoadedHistory> get copyWith =>
      __$$LendeeDataLoadedHistoryCopyWithImpl<_$LendeeDataLoadedHistory>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Lendee> lendeeData) loaded,
    required TResult Function(List<LendeeHistory> lendeeData) dataLoadedHistory,
    required TResult Function() added,
    required TResult Function() loading,
    required TResult Function() deleted,
    required TResult Function() update,
    required TResult Function(String? message) error,
  }) {
    return dataLoadedHistory(lendeeData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Lendee> lendeeData)? loaded,
    TResult Function(List<LendeeHistory> lendeeData)? dataLoadedHistory,
    TResult Function()? added,
    TResult Function()? loading,
    TResult Function()? deleted,
    TResult Function()? update,
    TResult Function(String? message)? error,
  }) {
    return dataLoadedHistory?.call(lendeeData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Lendee> lendeeData)? loaded,
    TResult Function(List<LendeeHistory> lendeeData)? dataLoadedHistory,
    TResult Function()? added,
    TResult Function()? loading,
    TResult Function()? deleted,
    TResult Function()? update,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (dataLoadedHistory != null) {
      return dataLoadedHistory(lendeeData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LendeeDataLoaded value) loaded,
    required TResult Function(LendeeDataLoadedHistory value) dataLoadedHistory,
    required TResult Function(LendeeAdded value) added,
    required TResult Function(LendeeLoading value) loading,
    required TResult Function(LendeeDeleted value) deleted,
    required TResult Function(LendeeUpdated value) update,
    required TResult Function(LendeeErrorDetails value) error,
  }) {
    return dataLoadedHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LendeeDataLoaded value)? loaded,
    TResult Function(LendeeDataLoadedHistory value)? dataLoadedHistory,
    TResult Function(LendeeAdded value)? added,
    TResult Function(LendeeLoading value)? loading,
    TResult Function(LendeeDeleted value)? deleted,
    TResult Function(LendeeUpdated value)? update,
    TResult Function(LendeeErrorDetails value)? error,
  }) {
    return dataLoadedHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LendeeDataLoaded value)? loaded,
    TResult Function(LendeeDataLoadedHistory value)? dataLoadedHistory,
    TResult Function(LendeeAdded value)? added,
    TResult Function(LendeeLoading value)? loading,
    TResult Function(LendeeDeleted value)? deleted,
    TResult Function(LendeeUpdated value)? update,
    TResult Function(LendeeErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (dataLoadedHistory != null) {
      return dataLoadedHistory(this);
    }
    return orElse();
  }
}

abstract class LendeeDataLoadedHistory implements LendeeApplication {
  const factory LendeeDataLoadedHistory(final List<LendeeHistory> lendeeData) =
      _$LendeeDataLoadedHistory;

  List<LendeeHistory> get lendeeData;
  @JsonKey(ignore: true)
  _$$LendeeDataLoadedHistoryCopyWith<_$LendeeDataLoadedHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LendeeAddedCopyWith<$Res> {
  factory _$$LendeeAddedCopyWith(
          _$LendeeAdded value, $Res Function(_$LendeeAdded) then) =
      __$$LendeeAddedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LendeeAddedCopyWithImpl<$Res>
    extends _$LendeeApplicationCopyWithImpl<$Res>
    implements _$$LendeeAddedCopyWith<$Res> {
  __$$LendeeAddedCopyWithImpl(
      _$LendeeAdded _value, $Res Function(_$LendeeAdded) _then)
      : super(_value, (v) => _then(v as _$LendeeAdded));

  @override
  _$LendeeAdded get _value => super._value as _$LendeeAdded;
}

/// @nodoc

class _$LendeeAdded implements LendeeAdded {
  const _$LendeeAdded();

  @override
  String toString() {
    return 'LendeeApplication.added()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LendeeAdded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Lendee> lendeeData) loaded,
    required TResult Function(List<LendeeHistory> lendeeData) dataLoadedHistory,
    required TResult Function() added,
    required TResult Function() loading,
    required TResult Function() deleted,
    required TResult Function() update,
    required TResult Function(String? message) error,
  }) {
    return added();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Lendee> lendeeData)? loaded,
    TResult Function(List<LendeeHistory> lendeeData)? dataLoadedHistory,
    TResult Function()? added,
    TResult Function()? loading,
    TResult Function()? deleted,
    TResult Function()? update,
    TResult Function(String? message)? error,
  }) {
    return added?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Lendee> lendeeData)? loaded,
    TResult Function(List<LendeeHistory> lendeeData)? dataLoadedHistory,
    TResult Function()? added,
    TResult Function()? loading,
    TResult Function()? deleted,
    TResult Function()? update,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LendeeDataLoaded value) loaded,
    required TResult Function(LendeeDataLoadedHistory value) dataLoadedHistory,
    required TResult Function(LendeeAdded value) added,
    required TResult Function(LendeeLoading value) loading,
    required TResult Function(LendeeDeleted value) deleted,
    required TResult Function(LendeeUpdated value) update,
    required TResult Function(LendeeErrorDetails value) error,
  }) {
    return added(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LendeeDataLoaded value)? loaded,
    TResult Function(LendeeDataLoadedHistory value)? dataLoadedHistory,
    TResult Function(LendeeAdded value)? added,
    TResult Function(LendeeLoading value)? loading,
    TResult Function(LendeeDeleted value)? deleted,
    TResult Function(LendeeUpdated value)? update,
    TResult Function(LendeeErrorDetails value)? error,
  }) {
    return added?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LendeeDataLoaded value)? loaded,
    TResult Function(LendeeDataLoadedHistory value)? dataLoadedHistory,
    TResult Function(LendeeAdded value)? added,
    TResult Function(LendeeLoading value)? loading,
    TResult Function(LendeeDeleted value)? deleted,
    TResult Function(LendeeUpdated value)? update,
    TResult Function(LendeeErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(this);
    }
    return orElse();
  }
}

abstract class LendeeAdded implements LendeeApplication {
  const factory LendeeAdded() = _$LendeeAdded;
}

/// @nodoc
abstract class _$$LendeeLoadingCopyWith<$Res> {
  factory _$$LendeeLoadingCopyWith(
          _$LendeeLoading value, $Res Function(_$LendeeLoading) then) =
      __$$LendeeLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LendeeLoadingCopyWithImpl<$Res>
    extends _$LendeeApplicationCopyWithImpl<$Res>
    implements _$$LendeeLoadingCopyWith<$Res> {
  __$$LendeeLoadingCopyWithImpl(
      _$LendeeLoading _value, $Res Function(_$LendeeLoading) _then)
      : super(_value, (v) => _then(v as _$LendeeLoading));

  @override
  _$LendeeLoading get _value => super._value as _$LendeeLoading;
}

/// @nodoc

class _$LendeeLoading implements LendeeLoading {
  const _$LendeeLoading();

  @override
  String toString() {
    return 'LendeeApplication.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LendeeLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Lendee> lendeeData) loaded,
    required TResult Function(List<LendeeHistory> lendeeData) dataLoadedHistory,
    required TResult Function() added,
    required TResult Function() loading,
    required TResult Function() deleted,
    required TResult Function() update,
    required TResult Function(String? message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Lendee> lendeeData)? loaded,
    TResult Function(List<LendeeHistory> lendeeData)? dataLoadedHistory,
    TResult Function()? added,
    TResult Function()? loading,
    TResult Function()? deleted,
    TResult Function()? update,
    TResult Function(String? message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Lendee> lendeeData)? loaded,
    TResult Function(List<LendeeHistory> lendeeData)? dataLoadedHistory,
    TResult Function()? added,
    TResult Function()? loading,
    TResult Function()? deleted,
    TResult Function()? update,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LendeeDataLoaded value) loaded,
    required TResult Function(LendeeDataLoadedHistory value) dataLoadedHistory,
    required TResult Function(LendeeAdded value) added,
    required TResult Function(LendeeLoading value) loading,
    required TResult Function(LendeeDeleted value) deleted,
    required TResult Function(LendeeUpdated value) update,
    required TResult Function(LendeeErrorDetails value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LendeeDataLoaded value)? loaded,
    TResult Function(LendeeDataLoadedHistory value)? dataLoadedHistory,
    TResult Function(LendeeAdded value)? added,
    TResult Function(LendeeLoading value)? loading,
    TResult Function(LendeeDeleted value)? deleted,
    TResult Function(LendeeUpdated value)? update,
    TResult Function(LendeeErrorDetails value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LendeeDataLoaded value)? loaded,
    TResult Function(LendeeDataLoadedHistory value)? dataLoadedHistory,
    TResult Function(LendeeAdded value)? added,
    TResult Function(LendeeLoading value)? loading,
    TResult Function(LendeeDeleted value)? deleted,
    TResult Function(LendeeUpdated value)? update,
    TResult Function(LendeeErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LendeeLoading implements LendeeApplication {
  const factory LendeeLoading() = _$LendeeLoading;
}

/// @nodoc
abstract class _$$LendeeDeletedCopyWith<$Res> {
  factory _$$LendeeDeletedCopyWith(
          _$LendeeDeleted value, $Res Function(_$LendeeDeleted) then) =
      __$$LendeeDeletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LendeeDeletedCopyWithImpl<$Res>
    extends _$LendeeApplicationCopyWithImpl<$Res>
    implements _$$LendeeDeletedCopyWith<$Res> {
  __$$LendeeDeletedCopyWithImpl(
      _$LendeeDeleted _value, $Res Function(_$LendeeDeleted) _then)
      : super(_value, (v) => _then(v as _$LendeeDeleted));

  @override
  _$LendeeDeleted get _value => super._value as _$LendeeDeleted;
}

/// @nodoc

class _$LendeeDeleted implements LendeeDeleted {
  const _$LendeeDeleted();

  @override
  String toString() {
    return 'LendeeApplication.deleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LendeeDeleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Lendee> lendeeData) loaded,
    required TResult Function(List<LendeeHistory> lendeeData) dataLoadedHistory,
    required TResult Function() added,
    required TResult Function() loading,
    required TResult Function() deleted,
    required TResult Function() update,
    required TResult Function(String? message) error,
  }) {
    return deleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Lendee> lendeeData)? loaded,
    TResult Function(List<LendeeHistory> lendeeData)? dataLoadedHistory,
    TResult Function()? added,
    TResult Function()? loading,
    TResult Function()? deleted,
    TResult Function()? update,
    TResult Function(String? message)? error,
  }) {
    return deleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Lendee> lendeeData)? loaded,
    TResult Function(List<LendeeHistory> lendeeData)? dataLoadedHistory,
    TResult Function()? added,
    TResult Function()? loading,
    TResult Function()? deleted,
    TResult Function()? update,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LendeeDataLoaded value) loaded,
    required TResult Function(LendeeDataLoadedHistory value) dataLoadedHistory,
    required TResult Function(LendeeAdded value) added,
    required TResult Function(LendeeLoading value) loading,
    required TResult Function(LendeeDeleted value) deleted,
    required TResult Function(LendeeUpdated value) update,
    required TResult Function(LendeeErrorDetails value) error,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LendeeDataLoaded value)? loaded,
    TResult Function(LendeeDataLoadedHistory value)? dataLoadedHistory,
    TResult Function(LendeeAdded value)? added,
    TResult Function(LendeeLoading value)? loading,
    TResult Function(LendeeDeleted value)? deleted,
    TResult Function(LendeeUpdated value)? update,
    TResult Function(LendeeErrorDetails value)? error,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LendeeDataLoaded value)? loaded,
    TResult Function(LendeeDataLoadedHistory value)? dataLoadedHistory,
    TResult Function(LendeeAdded value)? added,
    TResult Function(LendeeLoading value)? loading,
    TResult Function(LendeeDeleted value)? deleted,
    TResult Function(LendeeUpdated value)? update,
    TResult Function(LendeeErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class LendeeDeleted implements LendeeApplication {
  const factory LendeeDeleted() = _$LendeeDeleted;
}

/// @nodoc
abstract class _$$LendeeUpdatedCopyWith<$Res> {
  factory _$$LendeeUpdatedCopyWith(
          _$LendeeUpdated value, $Res Function(_$LendeeUpdated) then) =
      __$$LendeeUpdatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LendeeUpdatedCopyWithImpl<$Res>
    extends _$LendeeApplicationCopyWithImpl<$Res>
    implements _$$LendeeUpdatedCopyWith<$Res> {
  __$$LendeeUpdatedCopyWithImpl(
      _$LendeeUpdated _value, $Res Function(_$LendeeUpdated) _then)
      : super(_value, (v) => _then(v as _$LendeeUpdated));

  @override
  _$LendeeUpdated get _value => super._value as _$LendeeUpdated;
}

/// @nodoc

class _$LendeeUpdated implements LendeeUpdated {
  const _$LendeeUpdated();

  @override
  String toString() {
    return 'LendeeApplication.update()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LendeeUpdated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Lendee> lendeeData) loaded,
    required TResult Function(List<LendeeHistory> lendeeData) dataLoadedHistory,
    required TResult Function() added,
    required TResult Function() loading,
    required TResult Function() deleted,
    required TResult Function() update,
    required TResult Function(String? message) error,
  }) {
    return update();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Lendee> lendeeData)? loaded,
    TResult Function(List<LendeeHistory> lendeeData)? dataLoadedHistory,
    TResult Function()? added,
    TResult Function()? loading,
    TResult Function()? deleted,
    TResult Function()? update,
    TResult Function(String? message)? error,
  }) {
    return update?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Lendee> lendeeData)? loaded,
    TResult Function(List<LendeeHistory> lendeeData)? dataLoadedHistory,
    TResult Function()? added,
    TResult Function()? loading,
    TResult Function()? deleted,
    TResult Function()? update,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LendeeDataLoaded value) loaded,
    required TResult Function(LendeeDataLoadedHistory value) dataLoadedHistory,
    required TResult Function(LendeeAdded value) added,
    required TResult Function(LendeeLoading value) loading,
    required TResult Function(LendeeDeleted value) deleted,
    required TResult Function(LendeeUpdated value) update,
    required TResult Function(LendeeErrorDetails value) error,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LendeeDataLoaded value)? loaded,
    TResult Function(LendeeDataLoadedHistory value)? dataLoadedHistory,
    TResult Function(LendeeAdded value)? added,
    TResult Function(LendeeLoading value)? loading,
    TResult Function(LendeeDeleted value)? deleted,
    TResult Function(LendeeUpdated value)? update,
    TResult Function(LendeeErrorDetails value)? error,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LendeeDataLoaded value)? loaded,
    TResult Function(LendeeDataLoadedHistory value)? dataLoadedHistory,
    TResult Function(LendeeAdded value)? added,
    TResult Function(LendeeLoading value)? loading,
    TResult Function(LendeeDeleted value)? deleted,
    TResult Function(LendeeUpdated value)? update,
    TResult Function(LendeeErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class LendeeUpdated implements LendeeApplication {
  const factory LendeeUpdated() = _$LendeeUpdated;
}

/// @nodoc
abstract class _$$LendeeErrorDetailsCopyWith<$Res> {
  factory _$$LendeeErrorDetailsCopyWith(_$LendeeErrorDetails value,
          $Res Function(_$LendeeErrorDetails) then) =
      __$$LendeeErrorDetailsCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$$LendeeErrorDetailsCopyWithImpl<$Res>
    extends _$LendeeApplicationCopyWithImpl<$Res>
    implements _$$LendeeErrorDetailsCopyWith<$Res> {
  __$$LendeeErrorDetailsCopyWithImpl(
      _$LendeeErrorDetails _value, $Res Function(_$LendeeErrorDetails) _then)
      : super(_value, (v) => _then(v as _$LendeeErrorDetails));

  @override
  _$LendeeErrorDetails get _value => super._value as _$LendeeErrorDetails;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$LendeeErrorDetails(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LendeeErrorDetails implements LendeeErrorDetails {
  const _$LendeeErrorDetails([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'LendeeApplication.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LendeeErrorDetails &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$LendeeErrorDetailsCopyWith<_$LendeeErrorDetails> get copyWith =>
      __$$LendeeErrorDetailsCopyWithImpl<_$LendeeErrorDetails>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Lendee> lendeeData) loaded,
    required TResult Function(List<LendeeHistory> lendeeData) dataLoadedHistory,
    required TResult Function() added,
    required TResult Function() loading,
    required TResult Function() deleted,
    required TResult Function() update,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Lendee> lendeeData)? loaded,
    TResult Function(List<LendeeHistory> lendeeData)? dataLoadedHistory,
    TResult Function()? added,
    TResult Function()? loading,
    TResult Function()? deleted,
    TResult Function()? update,
    TResult Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Lendee> lendeeData)? loaded,
    TResult Function(List<LendeeHistory> lendeeData)? dataLoadedHistory,
    TResult Function()? added,
    TResult Function()? loading,
    TResult Function()? deleted,
    TResult Function()? update,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LendeeDataLoaded value) loaded,
    required TResult Function(LendeeDataLoadedHistory value) dataLoadedHistory,
    required TResult Function(LendeeAdded value) added,
    required TResult Function(LendeeLoading value) loading,
    required TResult Function(LendeeDeleted value) deleted,
    required TResult Function(LendeeUpdated value) update,
    required TResult Function(LendeeErrorDetails value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LendeeDataLoaded value)? loaded,
    TResult Function(LendeeDataLoadedHistory value)? dataLoadedHistory,
    TResult Function(LendeeAdded value)? added,
    TResult Function(LendeeLoading value)? loading,
    TResult Function(LendeeDeleted value)? deleted,
    TResult Function(LendeeUpdated value)? update,
    TResult Function(LendeeErrorDetails value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LendeeDataLoaded value)? loaded,
    TResult Function(LendeeDataLoadedHistory value)? dataLoadedHistory,
    TResult Function(LendeeAdded value)? added,
    TResult Function(LendeeLoading value)? loading,
    TResult Function(LendeeDeleted value)? deleted,
    TResult Function(LendeeUpdated value)? update,
    TResult Function(LendeeErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LendeeErrorDetails implements LendeeApplication {
  const factory LendeeErrorDetails([final String? message]) =
      _$LendeeErrorDetails;

  String? get message;
  @JsonKey(ignore: true)
  _$$LendeeErrorDetailsCopyWith<_$LendeeErrorDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
