// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_application.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserApplicationTearOff {
  const _$UserApplicationTearOff();

  UserData call(AppUser value) {
    return UserData(
      value,
    );
  }

  UserDataLoaded loaded() {
    return const UserDataLoaded();
  }

  UserLoading loading() {
    return const UserLoading();
  }

  UserErrorDetails error([String? message]) {
    return UserErrorDetails(
      message,
    );
  }

  UserInitial initial() {
    return const UserInitial();
  }
}

/// @nodoc
const $UserApplication = _$UserApplicationTearOff();

/// @nodoc
mixin _$UserApplication {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AppUser value) $default, {
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AppUser value)? $default, {
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UserData value) $default, {
    required TResult Function(UserDataLoaded value) loaded,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserErrorDetails value) error,
    required TResult Function(UserInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UserData value)? $default, {
    TResult Function(UserDataLoaded value)? loaded,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserErrorDetails value)? error,
    TResult Function(UserInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserApplicationCopyWith<$Res> {
  factory $UserApplicationCopyWith(
          UserApplication value, $Res Function(UserApplication) then) =
      _$UserApplicationCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserApplicationCopyWithImpl<$Res>
    implements $UserApplicationCopyWith<$Res> {
  _$UserApplicationCopyWithImpl(this._value, this._then);

  final UserApplication _value;
  // ignore: unused_field
  final $Res Function(UserApplication) _then;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res>;
  $Res call({AppUser value});

  $AppUserCopyWith<$Res> get value;
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res> extends _$UserApplicationCopyWithImpl<$Res>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(UserData _value, $Res Function(UserData) _then)
      : super(_value, (v) => _then(v as UserData));

  @override
  UserData get _value => super._value as UserData;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(UserData(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }

  @override
  $AppUserCopyWith<$Res> get value {
    return $AppUserCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc

class _$UserData implements UserData {
  const _$UserData(this.value);

  @override
  final AppUser value;

  @override
  String toString() {
    return 'UserApplication(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserData &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $UserDataCopyWith<UserData> get copyWith =>
      _$UserDataCopyWithImpl<UserData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AppUser value) $default, {
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function() initial,
  }) {
    return $default(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AppUser value)? $default, {
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? initial,
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
    TResult Function(UserData value) $default, {
    required TResult Function(UserDataLoaded value) loaded,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserErrorDetails value) error,
    required TResult Function(UserInitial value) initial,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UserData value)? $default, {
    TResult Function(UserDataLoaded value)? loaded,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserErrorDetails value)? error,
    TResult Function(UserInitial value)? initial,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UserData implements UserApplication {
  const factory UserData(AppUser value) = _$UserData;

  AppUser get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataLoadedCopyWith<$Res> {
  factory $UserDataLoadedCopyWith(
          UserDataLoaded value, $Res Function(UserDataLoaded) then) =
      _$UserDataLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserDataLoadedCopyWithImpl<$Res>
    extends _$UserApplicationCopyWithImpl<$Res>
    implements $UserDataLoadedCopyWith<$Res> {
  _$UserDataLoadedCopyWithImpl(
      UserDataLoaded _value, $Res Function(UserDataLoaded) _then)
      : super(_value, (v) => _then(v as UserDataLoaded));

  @override
  UserDataLoaded get _value => super._value as UserDataLoaded;
}

/// @nodoc

class _$UserDataLoaded implements UserDataLoaded {
  const _$UserDataLoaded();

  @override
  String toString() {
    return 'UserApplication.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserDataLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AppUser value) $default, {
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function() initial,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AppUser value)? $default, {
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? initial,
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
    TResult Function(UserData value) $default, {
    required TResult Function(UserDataLoaded value) loaded,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserErrorDetails value) error,
    required TResult Function(UserInitial value) initial,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UserData value)? $default, {
    TResult Function(UserDataLoaded value)? loaded,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserErrorDetails value)? error,
    TResult Function(UserInitial value)? initial,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class UserDataLoaded implements UserApplication {
  const factory UserDataLoaded() = _$UserDataLoaded;
}

/// @nodoc
abstract class $UserLoadingCopyWith<$Res> {
  factory $UserLoadingCopyWith(
          UserLoading value, $Res Function(UserLoading) then) =
      _$UserLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserLoadingCopyWithImpl<$Res>
    extends _$UserApplicationCopyWithImpl<$Res>
    implements $UserLoadingCopyWith<$Res> {
  _$UserLoadingCopyWithImpl(
      UserLoading _value, $Res Function(UserLoading) _then)
      : super(_value, (v) => _then(v as UserLoading));

  @override
  UserLoading get _value => super._value as UserLoading;
}

/// @nodoc

class _$UserLoading implements UserLoading {
  const _$UserLoading();

  @override
  String toString() {
    return 'UserApplication.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AppUser value) $default, {
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function() initial,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AppUser value)? $default, {
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? initial,
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
    TResult Function(UserData value) $default, {
    required TResult Function(UserDataLoaded value) loaded,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserErrorDetails value) error,
    required TResult Function(UserInitial value) initial,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UserData value)? $default, {
    TResult Function(UserDataLoaded value)? loaded,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserErrorDetails value)? error,
    TResult Function(UserInitial value)? initial,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UserLoading implements UserApplication {
  const factory UserLoading() = _$UserLoading;
}

/// @nodoc
abstract class $UserErrorDetailsCopyWith<$Res> {
  factory $UserErrorDetailsCopyWith(
          UserErrorDetails value, $Res Function(UserErrorDetails) then) =
      _$UserErrorDetailsCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$UserErrorDetailsCopyWithImpl<$Res>
    extends _$UserApplicationCopyWithImpl<$Res>
    implements $UserErrorDetailsCopyWith<$Res> {
  _$UserErrorDetailsCopyWithImpl(
      UserErrorDetails _value, $Res Function(UserErrorDetails) _then)
      : super(_value, (v) => _then(v as UserErrorDetails));

  @override
  UserErrorDetails get _value => super._value as UserErrorDetails;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(UserErrorDetails(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UserErrorDetails implements UserErrorDetails {
  const _$UserErrorDetails([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'UserApplication.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserErrorDetails &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $UserErrorDetailsCopyWith<UserErrorDetails> get copyWith =>
      _$UserErrorDetailsCopyWithImpl<UserErrorDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AppUser value) $default, {
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function() initial,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AppUser value)? $default, {
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? initial,
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
    TResult Function(UserData value) $default, {
    required TResult Function(UserDataLoaded value) loaded,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserErrorDetails value) error,
    required TResult Function(UserInitial value) initial,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UserData value)? $default, {
    TResult Function(UserDataLoaded value)? loaded,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserErrorDetails value)? error,
    TResult Function(UserInitial value)? initial,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UserErrorDetails implements UserApplication {
  const factory UserErrorDetails([String? message]) = _$UserErrorDetails;

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserErrorDetailsCopyWith<UserErrorDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInitialCopyWith<$Res> {
  factory $UserInitialCopyWith(
          UserInitial value, $Res Function(UserInitial) then) =
      _$UserInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserInitialCopyWithImpl<$Res>
    extends _$UserApplicationCopyWithImpl<$Res>
    implements $UserInitialCopyWith<$Res> {
  _$UserInitialCopyWithImpl(
      UserInitial _value, $Res Function(UserInitial) _then)
      : super(_value, (v) => _then(v as UserInitial));

  @override
  UserInitial get _value => super._value as UserInitial;
}

/// @nodoc

class _$UserInitial implements UserInitial {
  const _$UserInitial();

  @override
  String toString() {
    return 'UserApplication.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AppUser value) $default, {
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AppUser value)? $default, {
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? initial,
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
    TResult Function(UserData value) $default, {
    required TResult Function(UserDataLoaded value) loaded,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserErrorDetails value) error,
    required TResult Function(UserInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UserData value)? $default, {
    TResult Function(UserDataLoaded value)? loaded,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserErrorDetails value)? error,
    TResult Function(UserInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UserInitial implements UserApplication {
  const factory UserInitial() = _$UserInitial;
}
