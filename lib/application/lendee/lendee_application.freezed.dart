// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'lendee_application.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LendeeApplicationTearOff {
  const _$LendeeApplicationTearOff();

  LendeeData call(Lendee value) {
    return LendeeData(
      value,
    );
  }

  LendeeDataLoaded loaded() {
    return const LendeeDataLoaded();
  }

  LendeeLoading loading() {
    return const LendeeLoading();
  }

  LendeeErrorDetails error([String? message]) {
    return LendeeErrorDetails(
      message,
    );
  }

  LendeeInitial initial() {
    return const LendeeInitial();
  }

  LendinginitialData initialData(List<Lendee> lendeeData) {
    return LendinginitialData(
      lendeeData,
    );
  }
}

/// @nodoc
const $LendeeApplication = _$LendeeApplicationTearOff();

/// @nodoc
mixin _$LendeeApplication {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Lendee value) $default, {
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function() initial,
    required TResult Function(List<Lendee> lendeeData) initialData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Lendee value)? $default, {
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? initial,
    TResult Function(List<Lendee> lendeeData)? initialData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LendeeData value) $default, {
    required TResult Function(LendeeDataLoaded value) loaded,
    required TResult Function(LendeeLoading value) loading,
    required TResult Function(LendeeErrorDetails value) error,
    required TResult Function(LendeeInitial value) initial,
    required TResult Function(LendinginitialData value) initialData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LendeeData value)? $default, {
    TResult Function(LendeeDataLoaded value)? loaded,
    TResult Function(LendeeLoading value)? loading,
    TResult Function(LendeeErrorDetails value)? error,
    TResult Function(LendeeInitial value)? initial,
    TResult Function(LendinginitialData value)? initialData,
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
abstract class $LendeeDataCopyWith<$Res> {
  factory $LendeeDataCopyWith(
          LendeeData value, $Res Function(LendeeData) then) =
      _$LendeeDataCopyWithImpl<$Res>;
  $Res call({Lendee value});

  $LendeeCopyWith<$Res> get value;
}

/// @nodoc
class _$LendeeDataCopyWithImpl<$Res>
    extends _$LendeeApplicationCopyWithImpl<$Res>
    implements $LendeeDataCopyWith<$Res> {
  _$LendeeDataCopyWithImpl(LendeeData _value, $Res Function(LendeeData) _then)
      : super(_value, (v) => _then(v as LendeeData));

  @override
  LendeeData get _value => super._value as LendeeData;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(LendeeData(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Lendee,
    ));
  }

  @override
  $LendeeCopyWith<$Res> get value {
    return $LendeeCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc

class _$LendeeData implements LendeeData {
  const _$LendeeData(this.value);

  @override
  final Lendee value;

  @override
  String toString() {
    return 'LendeeApplication(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LendeeData &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $LendeeDataCopyWith<LendeeData> get copyWith =>
      _$LendeeDataCopyWithImpl<LendeeData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Lendee value) $default, {
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function() initial,
    required TResult Function(List<Lendee> lendeeData) initialData,
  }) {
    return $default(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Lendee value)? $default, {
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? initial,
    TResult Function(List<Lendee> lendeeData)? initialData,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LendeeData value) $default, {
    required TResult Function(LendeeDataLoaded value) loaded,
    required TResult Function(LendeeLoading value) loading,
    required TResult Function(LendeeErrorDetails value) error,
    required TResult Function(LendeeInitial value) initial,
    required TResult Function(LendinginitialData value) initialData,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LendeeData value)? $default, {
    TResult Function(LendeeDataLoaded value)? loaded,
    TResult Function(LendeeLoading value)? loading,
    TResult Function(LendeeErrorDetails value)? error,
    TResult Function(LendeeInitial value)? initial,
    TResult Function(LendinginitialData value)? initialData,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class LendeeData implements LendeeApplication {
  const factory LendeeData(Lendee value) = _$LendeeData;

  Lendee get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LendeeDataCopyWith<LendeeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LendeeDataLoadedCopyWith<$Res> {
  factory $LendeeDataLoadedCopyWith(
          LendeeDataLoaded value, $Res Function(LendeeDataLoaded) then) =
      _$LendeeDataLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$LendeeDataLoadedCopyWithImpl<$Res>
    extends _$LendeeApplicationCopyWithImpl<$Res>
    implements $LendeeDataLoadedCopyWith<$Res> {
  _$LendeeDataLoadedCopyWithImpl(
      LendeeDataLoaded _value, $Res Function(LendeeDataLoaded) _then)
      : super(_value, (v) => _then(v as LendeeDataLoaded));

  @override
  LendeeDataLoaded get _value => super._value as LendeeDataLoaded;
}

/// @nodoc

class _$LendeeDataLoaded implements LendeeDataLoaded {
  const _$LendeeDataLoaded();

  @override
  String toString() {
    return 'LendeeApplication.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LendeeDataLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Lendee value) $default, {
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function() initial,
    required TResult Function(List<Lendee> lendeeData) initialData,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Lendee value)? $default, {
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? initial,
    TResult Function(List<Lendee> lendeeData)? initialData,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LendeeData value) $default, {
    required TResult Function(LendeeDataLoaded value) loaded,
    required TResult Function(LendeeLoading value) loading,
    required TResult Function(LendeeErrorDetails value) error,
    required TResult Function(LendeeInitial value) initial,
    required TResult Function(LendinginitialData value) initialData,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LendeeData value)? $default, {
    TResult Function(LendeeDataLoaded value)? loaded,
    TResult Function(LendeeLoading value)? loading,
    TResult Function(LendeeErrorDetails value)? error,
    TResult Function(LendeeInitial value)? initial,
    TResult Function(LendinginitialData value)? initialData,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LendeeDataLoaded implements LendeeApplication {
  const factory LendeeDataLoaded() = _$LendeeDataLoaded;
}

/// @nodoc
abstract class $LendeeLoadingCopyWith<$Res> {
  factory $LendeeLoadingCopyWith(
          LendeeLoading value, $Res Function(LendeeLoading) then) =
      _$LendeeLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LendeeLoadingCopyWithImpl<$Res>
    extends _$LendeeApplicationCopyWithImpl<$Res>
    implements $LendeeLoadingCopyWith<$Res> {
  _$LendeeLoadingCopyWithImpl(
      LendeeLoading _value, $Res Function(LendeeLoading) _then)
      : super(_value, (v) => _then(v as LendeeLoading));

  @override
  LendeeLoading get _value => super._value as LendeeLoading;
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
    return identical(this, other) || (other is LendeeLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Lendee value) $default, {
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function() initial,
    required TResult Function(List<Lendee> lendeeData) initialData,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Lendee value)? $default, {
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? initial,
    TResult Function(List<Lendee> lendeeData)? initialData,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LendeeData value) $default, {
    required TResult Function(LendeeDataLoaded value) loaded,
    required TResult Function(LendeeLoading value) loading,
    required TResult Function(LendeeErrorDetails value) error,
    required TResult Function(LendeeInitial value) initial,
    required TResult Function(LendinginitialData value) initialData,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LendeeData value)? $default, {
    TResult Function(LendeeDataLoaded value)? loaded,
    TResult Function(LendeeLoading value)? loading,
    TResult Function(LendeeErrorDetails value)? error,
    TResult Function(LendeeInitial value)? initial,
    TResult Function(LendinginitialData value)? initialData,
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
abstract class $LendeeErrorDetailsCopyWith<$Res> {
  factory $LendeeErrorDetailsCopyWith(
          LendeeErrorDetails value, $Res Function(LendeeErrorDetails) then) =
      _$LendeeErrorDetailsCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$LendeeErrorDetailsCopyWithImpl<$Res>
    extends _$LendeeApplicationCopyWithImpl<$Res>
    implements $LendeeErrorDetailsCopyWith<$Res> {
  _$LendeeErrorDetailsCopyWithImpl(
      LendeeErrorDetails _value, $Res Function(LendeeErrorDetails) _then)
      : super(_value, (v) => _then(v as LendeeErrorDetails));

  @override
  LendeeErrorDetails get _value => super._value as LendeeErrorDetails;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(LendeeErrorDetails(
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
        (other is LendeeErrorDetails &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $LendeeErrorDetailsCopyWith<LendeeErrorDetails> get copyWith =>
      _$LendeeErrorDetailsCopyWithImpl<LendeeErrorDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Lendee value) $default, {
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function() initial,
    required TResult Function(List<Lendee> lendeeData) initialData,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Lendee value)? $default, {
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? initial,
    TResult Function(List<Lendee> lendeeData)? initialData,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LendeeData value) $default, {
    required TResult Function(LendeeDataLoaded value) loaded,
    required TResult Function(LendeeLoading value) loading,
    required TResult Function(LendeeErrorDetails value) error,
    required TResult Function(LendeeInitial value) initial,
    required TResult Function(LendinginitialData value) initialData,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LendeeData value)? $default, {
    TResult Function(LendeeDataLoaded value)? loaded,
    TResult Function(LendeeLoading value)? loading,
    TResult Function(LendeeErrorDetails value)? error,
    TResult Function(LendeeInitial value)? initial,
    TResult Function(LendinginitialData value)? initialData,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LendeeErrorDetails implements LendeeApplication {
  const factory LendeeErrorDetails([String? message]) = _$LendeeErrorDetails;

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LendeeErrorDetailsCopyWith<LendeeErrorDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LendeeInitialCopyWith<$Res> {
  factory $LendeeInitialCopyWith(
          LendeeInitial value, $Res Function(LendeeInitial) then) =
      _$LendeeInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$LendeeInitialCopyWithImpl<$Res>
    extends _$LendeeApplicationCopyWithImpl<$Res>
    implements $LendeeInitialCopyWith<$Res> {
  _$LendeeInitialCopyWithImpl(
      LendeeInitial _value, $Res Function(LendeeInitial) _then)
      : super(_value, (v) => _then(v as LendeeInitial));

  @override
  LendeeInitial get _value => super._value as LendeeInitial;
}

/// @nodoc

class _$LendeeInitial implements LendeeInitial {
  const _$LendeeInitial();

  @override
  String toString() {
    return 'LendeeApplication.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LendeeInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Lendee value) $default, {
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function() initial,
    required TResult Function(List<Lendee> lendeeData) initialData,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Lendee value)? $default, {
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? initial,
    TResult Function(List<Lendee> lendeeData)? initialData,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LendeeData value) $default, {
    required TResult Function(LendeeDataLoaded value) loaded,
    required TResult Function(LendeeLoading value) loading,
    required TResult Function(LendeeErrorDetails value) error,
    required TResult Function(LendeeInitial value) initial,
    required TResult Function(LendinginitialData value) initialData,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LendeeData value)? $default, {
    TResult Function(LendeeDataLoaded value)? loaded,
    TResult Function(LendeeLoading value)? loading,
    TResult Function(LendeeErrorDetails value)? error,
    TResult Function(LendeeInitial value)? initial,
    TResult Function(LendinginitialData value)? initialData,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LendeeInitial implements LendeeApplication {
  const factory LendeeInitial() = _$LendeeInitial;
}

/// @nodoc
abstract class $LendinginitialDataCopyWith<$Res> {
  factory $LendinginitialDataCopyWith(
          LendinginitialData value, $Res Function(LendinginitialData) then) =
      _$LendinginitialDataCopyWithImpl<$Res>;
  $Res call({List<Lendee> lendeeData});
}

/// @nodoc
class _$LendinginitialDataCopyWithImpl<$Res>
    extends _$LendeeApplicationCopyWithImpl<$Res>
    implements $LendinginitialDataCopyWith<$Res> {
  _$LendinginitialDataCopyWithImpl(
      LendinginitialData _value, $Res Function(LendinginitialData) _then)
      : super(_value, (v) => _then(v as LendinginitialData));

  @override
  LendinginitialData get _value => super._value as LendinginitialData;

  @override
  $Res call({
    Object? lendeeData = freezed,
  }) {
    return _then(LendinginitialData(
      lendeeData == freezed
          ? _value.lendeeData
          : lendeeData // ignore: cast_nullable_to_non_nullable
              as List<Lendee>,
    ));
  }
}

/// @nodoc

class _$LendinginitialData implements LendinginitialData {
  const _$LendinginitialData(this.lendeeData);

  @override
  final List<Lendee> lendeeData;

  @override
  String toString() {
    return 'LendeeApplication.initialData(lendeeData: $lendeeData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LendinginitialData &&
            (identical(other.lendeeData, lendeeData) ||
                const DeepCollectionEquality()
                    .equals(other.lendeeData, lendeeData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lendeeData);

  @JsonKey(ignore: true)
  @override
  $LendinginitialDataCopyWith<LendinginitialData> get copyWith =>
      _$LendinginitialDataCopyWithImpl<LendinginitialData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Lendee value) $default, {
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function() initial,
    required TResult Function(List<Lendee> lendeeData) initialData,
  }) {
    return initialData(lendeeData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Lendee value)? $default, {
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? initial,
    TResult Function(List<Lendee> lendeeData)? initialData,
    required TResult orElse(),
  }) {
    if (initialData != null) {
      return initialData(lendeeData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LendeeData value) $default, {
    required TResult Function(LendeeDataLoaded value) loaded,
    required TResult Function(LendeeLoading value) loading,
    required TResult Function(LendeeErrorDetails value) error,
    required TResult Function(LendeeInitial value) initial,
    required TResult Function(LendinginitialData value) initialData,
  }) {
    return initialData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LendeeData value)? $default, {
    TResult Function(LendeeDataLoaded value)? loaded,
    TResult Function(LendeeLoading value)? loading,
    TResult Function(LendeeErrorDetails value)? error,
    TResult Function(LendeeInitial value)? initial,
    TResult Function(LendinginitialData value)? initialData,
    required TResult orElse(),
  }) {
    if (initialData != null) {
      return initialData(this);
    }
    return orElse();
  }
}

abstract class LendinginitialData implements LendeeApplication {
  const factory LendinginitialData(List<Lendee> lendeeData) =
      _$LendinginitialData;

  List<Lendee> get lendeeData => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LendinginitialDataCopyWith<LendinginitialData> get copyWith =>
      throw _privateConstructorUsedError;
}
