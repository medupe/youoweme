// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_application.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserApplication {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppUser value) loaded,
    required TResult Function() signUpWithUsernameAndPassword,
    required TResult Function() unsignedIn,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function() signedIn,
    required TResult Function() signout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppUser value)? loaded,
    TResult Function()? signUpWithUsernameAndPassword,
    TResult Function()? unsignedIn,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? signedIn,
    TResult Function()? signout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppUser value)? loaded,
    TResult Function()? signUpWithUsernameAndPassword,
    TResult Function()? unsignedIn,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? signedIn,
    TResult Function()? signout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserDataLoaded value) loaded,
    required TResult Function(UserSignUpWithUserNameAndPassword value)
        signUpWithUsernameAndPassword,
    required TResult Function(UserUnsignedIn value) unsignedIn,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserErrorDetails value) error,
    required TResult Function(UserSignedIn value) signedIn,
    required TResult Function(UserSignout value) signout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserDataLoaded value)? loaded,
    TResult Function(UserSignUpWithUserNameAndPassword value)?
        signUpWithUsernameAndPassword,
    TResult Function(UserUnsignedIn value)? unsignedIn,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserErrorDetails value)? error,
    TResult Function(UserSignedIn value)? signedIn,
    TResult Function(UserSignout value)? signout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserDataLoaded value)? loaded,
    TResult Function(UserSignUpWithUserNameAndPassword value)?
        signUpWithUsernameAndPassword,
    TResult Function(UserUnsignedIn value)? unsignedIn,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserErrorDetails value)? error,
    TResult Function(UserSignedIn value)? signedIn,
    TResult Function(UserSignout value)? signout,
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
abstract class _$$UserDataLoadedCopyWith<$Res> {
  factory _$$UserDataLoadedCopyWith(
          _$UserDataLoaded value, $Res Function(_$UserDataLoaded) then) =
      __$$UserDataLoadedCopyWithImpl<$Res>;
  $Res call({AppUser value});

  $AppUserCopyWith<$Res> get value;
}

/// @nodoc
class __$$UserDataLoadedCopyWithImpl<$Res>
    extends _$UserApplicationCopyWithImpl<$Res>
    implements _$$UserDataLoadedCopyWith<$Res> {
  __$$UserDataLoadedCopyWithImpl(
      _$UserDataLoaded _value, $Res Function(_$UserDataLoaded) _then)
      : super(_value, (v) => _then(v as _$UserDataLoaded));

  @override
  _$UserDataLoaded get _value => super._value as _$UserDataLoaded;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$UserDataLoaded(
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

class _$UserDataLoaded implements UserDataLoaded {
  const _$UserDataLoaded(this.value);

  @override
  final AppUser value;

  @override
  String toString() {
    return 'UserApplication.loaded(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataLoaded &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$UserDataLoadedCopyWith<_$UserDataLoaded> get copyWith =>
      __$$UserDataLoadedCopyWithImpl<_$UserDataLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppUser value) loaded,
    required TResult Function() signUpWithUsernameAndPassword,
    required TResult Function() unsignedIn,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function() signedIn,
    required TResult Function() signout,
  }) {
    return loaded(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppUser value)? loaded,
    TResult Function()? signUpWithUsernameAndPassword,
    TResult Function()? unsignedIn,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? signedIn,
    TResult Function()? signout,
  }) {
    return loaded?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppUser value)? loaded,
    TResult Function()? signUpWithUsernameAndPassword,
    TResult Function()? unsignedIn,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? signedIn,
    TResult Function()? signout,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserDataLoaded value) loaded,
    required TResult Function(UserSignUpWithUserNameAndPassword value)
        signUpWithUsernameAndPassword,
    required TResult Function(UserUnsignedIn value) unsignedIn,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserErrorDetails value) error,
    required TResult Function(UserSignedIn value) signedIn,
    required TResult Function(UserSignout value) signout,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserDataLoaded value)? loaded,
    TResult Function(UserSignUpWithUserNameAndPassword value)?
        signUpWithUsernameAndPassword,
    TResult Function(UserUnsignedIn value)? unsignedIn,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserErrorDetails value)? error,
    TResult Function(UserSignedIn value)? signedIn,
    TResult Function(UserSignout value)? signout,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserDataLoaded value)? loaded,
    TResult Function(UserSignUpWithUserNameAndPassword value)?
        signUpWithUsernameAndPassword,
    TResult Function(UserUnsignedIn value)? unsignedIn,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserErrorDetails value)? error,
    TResult Function(UserSignedIn value)? signedIn,
    TResult Function(UserSignout value)? signout,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class UserDataLoaded implements UserApplication {
  const factory UserDataLoaded(final AppUser value) = _$UserDataLoaded;

  AppUser get value;
  @JsonKey(ignore: true)
  _$$UserDataLoadedCopyWith<_$UserDataLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserSignUpWithUserNameAndPasswordCopyWith<$Res> {
  factory _$$UserSignUpWithUserNameAndPasswordCopyWith(
          _$UserSignUpWithUserNameAndPassword value,
          $Res Function(_$UserSignUpWithUserNameAndPassword) then) =
      __$$UserSignUpWithUserNameAndPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserSignUpWithUserNameAndPasswordCopyWithImpl<$Res>
    extends _$UserApplicationCopyWithImpl<$Res>
    implements _$$UserSignUpWithUserNameAndPasswordCopyWith<$Res> {
  __$$UserSignUpWithUserNameAndPasswordCopyWithImpl(
      _$UserSignUpWithUserNameAndPassword _value,
      $Res Function(_$UserSignUpWithUserNameAndPassword) _then)
      : super(_value, (v) => _then(v as _$UserSignUpWithUserNameAndPassword));

  @override
  _$UserSignUpWithUserNameAndPassword get _value =>
      super._value as _$UserSignUpWithUserNameAndPassword;
}

/// @nodoc

class _$UserSignUpWithUserNameAndPassword
    implements UserSignUpWithUserNameAndPassword {
  const _$UserSignUpWithUserNameAndPassword();

  @override
  String toString() {
    return 'UserApplication.signUpWithUsernameAndPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSignUpWithUserNameAndPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppUser value) loaded,
    required TResult Function() signUpWithUsernameAndPassword,
    required TResult Function() unsignedIn,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function() signedIn,
    required TResult Function() signout,
  }) {
    return signUpWithUsernameAndPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppUser value)? loaded,
    TResult Function()? signUpWithUsernameAndPassword,
    TResult Function()? unsignedIn,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? signedIn,
    TResult Function()? signout,
  }) {
    return signUpWithUsernameAndPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppUser value)? loaded,
    TResult Function()? signUpWithUsernameAndPassword,
    TResult Function()? unsignedIn,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? signedIn,
    TResult Function()? signout,
    required TResult orElse(),
  }) {
    if (signUpWithUsernameAndPassword != null) {
      return signUpWithUsernameAndPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserDataLoaded value) loaded,
    required TResult Function(UserSignUpWithUserNameAndPassword value)
        signUpWithUsernameAndPassword,
    required TResult Function(UserUnsignedIn value) unsignedIn,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserErrorDetails value) error,
    required TResult Function(UserSignedIn value) signedIn,
    required TResult Function(UserSignout value) signout,
  }) {
    return signUpWithUsernameAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserDataLoaded value)? loaded,
    TResult Function(UserSignUpWithUserNameAndPassword value)?
        signUpWithUsernameAndPassword,
    TResult Function(UserUnsignedIn value)? unsignedIn,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserErrorDetails value)? error,
    TResult Function(UserSignedIn value)? signedIn,
    TResult Function(UserSignout value)? signout,
  }) {
    return signUpWithUsernameAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserDataLoaded value)? loaded,
    TResult Function(UserSignUpWithUserNameAndPassword value)?
        signUpWithUsernameAndPassword,
    TResult Function(UserUnsignedIn value)? unsignedIn,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserErrorDetails value)? error,
    TResult Function(UserSignedIn value)? signedIn,
    TResult Function(UserSignout value)? signout,
    required TResult orElse(),
  }) {
    if (signUpWithUsernameAndPassword != null) {
      return signUpWithUsernameAndPassword(this);
    }
    return orElse();
  }
}

abstract class UserSignUpWithUserNameAndPassword implements UserApplication {
  const factory UserSignUpWithUserNameAndPassword() =
      _$UserSignUpWithUserNameAndPassword;
}

/// @nodoc
abstract class _$$UserUnsignedInCopyWith<$Res> {
  factory _$$UserUnsignedInCopyWith(
          _$UserUnsignedIn value, $Res Function(_$UserUnsignedIn) then) =
      __$$UserUnsignedInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserUnsignedInCopyWithImpl<$Res>
    extends _$UserApplicationCopyWithImpl<$Res>
    implements _$$UserUnsignedInCopyWith<$Res> {
  __$$UserUnsignedInCopyWithImpl(
      _$UserUnsignedIn _value, $Res Function(_$UserUnsignedIn) _then)
      : super(_value, (v) => _then(v as _$UserUnsignedIn));

  @override
  _$UserUnsignedIn get _value => super._value as _$UserUnsignedIn;
}

/// @nodoc

class _$UserUnsignedIn implements UserUnsignedIn {
  const _$UserUnsignedIn();

  @override
  String toString() {
    return 'UserApplication.unsignedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserUnsignedIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppUser value) loaded,
    required TResult Function() signUpWithUsernameAndPassword,
    required TResult Function() unsignedIn,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function() signedIn,
    required TResult Function() signout,
  }) {
    return unsignedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppUser value)? loaded,
    TResult Function()? signUpWithUsernameAndPassword,
    TResult Function()? unsignedIn,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? signedIn,
    TResult Function()? signout,
  }) {
    return unsignedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppUser value)? loaded,
    TResult Function()? signUpWithUsernameAndPassword,
    TResult Function()? unsignedIn,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? signedIn,
    TResult Function()? signout,
    required TResult orElse(),
  }) {
    if (unsignedIn != null) {
      return unsignedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserDataLoaded value) loaded,
    required TResult Function(UserSignUpWithUserNameAndPassword value)
        signUpWithUsernameAndPassword,
    required TResult Function(UserUnsignedIn value) unsignedIn,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserErrorDetails value) error,
    required TResult Function(UserSignedIn value) signedIn,
    required TResult Function(UserSignout value) signout,
  }) {
    return unsignedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserDataLoaded value)? loaded,
    TResult Function(UserSignUpWithUserNameAndPassword value)?
        signUpWithUsernameAndPassword,
    TResult Function(UserUnsignedIn value)? unsignedIn,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserErrorDetails value)? error,
    TResult Function(UserSignedIn value)? signedIn,
    TResult Function(UserSignout value)? signout,
  }) {
    return unsignedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserDataLoaded value)? loaded,
    TResult Function(UserSignUpWithUserNameAndPassword value)?
        signUpWithUsernameAndPassword,
    TResult Function(UserUnsignedIn value)? unsignedIn,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserErrorDetails value)? error,
    TResult Function(UserSignedIn value)? signedIn,
    TResult Function(UserSignout value)? signout,
    required TResult orElse(),
  }) {
    if (unsignedIn != null) {
      return unsignedIn(this);
    }
    return orElse();
  }
}

abstract class UserUnsignedIn implements UserApplication {
  const factory UserUnsignedIn() = _$UserUnsignedIn;
}

/// @nodoc
abstract class _$$UserLoadingCopyWith<$Res> {
  factory _$$UserLoadingCopyWith(
          _$UserLoading value, $Res Function(_$UserLoading) then) =
      __$$UserLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserLoadingCopyWithImpl<$Res>
    extends _$UserApplicationCopyWithImpl<$Res>
    implements _$$UserLoadingCopyWith<$Res> {
  __$$UserLoadingCopyWithImpl(
      _$UserLoading _value, $Res Function(_$UserLoading) _then)
      : super(_value, (v) => _then(v as _$UserLoading));

  @override
  _$UserLoading get _value => super._value as _$UserLoading;
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppUser value) loaded,
    required TResult Function() signUpWithUsernameAndPassword,
    required TResult Function() unsignedIn,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function() signedIn,
    required TResult Function() signout,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppUser value)? loaded,
    TResult Function()? signUpWithUsernameAndPassword,
    TResult Function()? unsignedIn,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? signedIn,
    TResult Function()? signout,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppUser value)? loaded,
    TResult Function()? signUpWithUsernameAndPassword,
    TResult Function()? unsignedIn,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? signedIn,
    TResult Function()? signout,
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
    required TResult Function(UserDataLoaded value) loaded,
    required TResult Function(UserSignUpWithUserNameAndPassword value)
        signUpWithUsernameAndPassword,
    required TResult Function(UserUnsignedIn value) unsignedIn,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserErrorDetails value) error,
    required TResult Function(UserSignedIn value) signedIn,
    required TResult Function(UserSignout value) signout,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserDataLoaded value)? loaded,
    TResult Function(UserSignUpWithUserNameAndPassword value)?
        signUpWithUsernameAndPassword,
    TResult Function(UserUnsignedIn value)? unsignedIn,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserErrorDetails value)? error,
    TResult Function(UserSignedIn value)? signedIn,
    TResult Function(UserSignout value)? signout,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserDataLoaded value)? loaded,
    TResult Function(UserSignUpWithUserNameAndPassword value)?
        signUpWithUsernameAndPassword,
    TResult Function(UserUnsignedIn value)? unsignedIn,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserErrorDetails value)? error,
    TResult Function(UserSignedIn value)? signedIn,
    TResult Function(UserSignout value)? signout,
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
abstract class _$$UserErrorDetailsCopyWith<$Res> {
  factory _$$UserErrorDetailsCopyWith(
          _$UserErrorDetails value, $Res Function(_$UserErrorDetails) then) =
      __$$UserErrorDetailsCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$$UserErrorDetailsCopyWithImpl<$Res>
    extends _$UserApplicationCopyWithImpl<$Res>
    implements _$$UserErrorDetailsCopyWith<$Res> {
  __$$UserErrorDetailsCopyWithImpl(
      _$UserErrorDetails _value, $Res Function(_$UserErrorDetails) _then)
      : super(_value, (v) => _then(v as _$UserErrorDetails));

  @override
  _$UserErrorDetails get _value => super._value as _$UserErrorDetails;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UserErrorDetails(
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
        (other.runtimeType == runtimeType &&
            other is _$UserErrorDetails &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$UserErrorDetailsCopyWith<_$UserErrorDetails> get copyWith =>
      __$$UserErrorDetailsCopyWithImpl<_$UserErrorDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppUser value) loaded,
    required TResult Function() signUpWithUsernameAndPassword,
    required TResult Function() unsignedIn,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function() signedIn,
    required TResult Function() signout,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppUser value)? loaded,
    TResult Function()? signUpWithUsernameAndPassword,
    TResult Function()? unsignedIn,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? signedIn,
    TResult Function()? signout,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppUser value)? loaded,
    TResult Function()? signUpWithUsernameAndPassword,
    TResult Function()? unsignedIn,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? signedIn,
    TResult Function()? signout,
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
    required TResult Function(UserDataLoaded value) loaded,
    required TResult Function(UserSignUpWithUserNameAndPassword value)
        signUpWithUsernameAndPassword,
    required TResult Function(UserUnsignedIn value) unsignedIn,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserErrorDetails value) error,
    required TResult Function(UserSignedIn value) signedIn,
    required TResult Function(UserSignout value) signout,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserDataLoaded value)? loaded,
    TResult Function(UserSignUpWithUserNameAndPassword value)?
        signUpWithUsernameAndPassword,
    TResult Function(UserUnsignedIn value)? unsignedIn,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserErrorDetails value)? error,
    TResult Function(UserSignedIn value)? signedIn,
    TResult Function(UserSignout value)? signout,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserDataLoaded value)? loaded,
    TResult Function(UserSignUpWithUserNameAndPassword value)?
        signUpWithUsernameAndPassword,
    TResult Function(UserUnsignedIn value)? unsignedIn,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserErrorDetails value)? error,
    TResult Function(UserSignedIn value)? signedIn,
    TResult Function(UserSignout value)? signout,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UserErrorDetails implements UserApplication {
  const factory UserErrorDetails([final String? message]) = _$UserErrorDetails;

  String? get message;
  @JsonKey(ignore: true)
  _$$UserErrorDetailsCopyWith<_$UserErrorDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserSignedInCopyWith<$Res> {
  factory _$$UserSignedInCopyWith(
          _$UserSignedIn value, $Res Function(_$UserSignedIn) then) =
      __$$UserSignedInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserSignedInCopyWithImpl<$Res>
    extends _$UserApplicationCopyWithImpl<$Res>
    implements _$$UserSignedInCopyWith<$Res> {
  __$$UserSignedInCopyWithImpl(
      _$UserSignedIn _value, $Res Function(_$UserSignedIn) _then)
      : super(_value, (v) => _then(v as _$UserSignedIn));

  @override
  _$UserSignedIn get _value => super._value as _$UserSignedIn;
}

/// @nodoc

class _$UserSignedIn implements UserSignedIn {
  const _$UserSignedIn();

  @override
  String toString() {
    return 'UserApplication.signedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserSignedIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppUser value) loaded,
    required TResult Function() signUpWithUsernameAndPassword,
    required TResult Function() unsignedIn,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function() signedIn,
    required TResult Function() signout,
  }) {
    return signedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppUser value)? loaded,
    TResult Function()? signUpWithUsernameAndPassword,
    TResult Function()? unsignedIn,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? signedIn,
    TResult Function()? signout,
  }) {
    return signedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppUser value)? loaded,
    TResult Function()? signUpWithUsernameAndPassword,
    TResult Function()? unsignedIn,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? signedIn,
    TResult Function()? signout,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserDataLoaded value) loaded,
    required TResult Function(UserSignUpWithUserNameAndPassword value)
        signUpWithUsernameAndPassword,
    required TResult Function(UserUnsignedIn value) unsignedIn,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserErrorDetails value) error,
    required TResult Function(UserSignedIn value) signedIn,
    required TResult Function(UserSignout value) signout,
  }) {
    return signedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserDataLoaded value)? loaded,
    TResult Function(UserSignUpWithUserNameAndPassword value)?
        signUpWithUsernameAndPassword,
    TResult Function(UserUnsignedIn value)? unsignedIn,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserErrorDetails value)? error,
    TResult Function(UserSignedIn value)? signedIn,
    TResult Function(UserSignout value)? signout,
  }) {
    return signedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserDataLoaded value)? loaded,
    TResult Function(UserSignUpWithUserNameAndPassword value)?
        signUpWithUsernameAndPassword,
    TResult Function(UserUnsignedIn value)? unsignedIn,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserErrorDetails value)? error,
    TResult Function(UserSignedIn value)? signedIn,
    TResult Function(UserSignout value)? signout,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(this);
    }
    return orElse();
  }
}

abstract class UserSignedIn implements UserApplication {
  const factory UserSignedIn() = _$UserSignedIn;
}

/// @nodoc
abstract class _$$UserSignoutCopyWith<$Res> {
  factory _$$UserSignoutCopyWith(
          _$UserSignout value, $Res Function(_$UserSignout) then) =
      __$$UserSignoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserSignoutCopyWithImpl<$Res>
    extends _$UserApplicationCopyWithImpl<$Res>
    implements _$$UserSignoutCopyWith<$Res> {
  __$$UserSignoutCopyWithImpl(
      _$UserSignout _value, $Res Function(_$UserSignout) _then)
      : super(_value, (v) => _then(v as _$UserSignout));

  @override
  _$UserSignout get _value => super._value as _$UserSignout;
}

/// @nodoc

class _$UserSignout implements UserSignout {
  const _$UserSignout();

  @override
  String toString() {
    return 'UserApplication.signout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserSignout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppUser value) loaded,
    required TResult Function() signUpWithUsernameAndPassword,
    required TResult Function() unsignedIn,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function() signedIn,
    required TResult Function() signout,
  }) {
    return signout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppUser value)? loaded,
    TResult Function()? signUpWithUsernameAndPassword,
    TResult Function()? unsignedIn,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? signedIn,
    TResult Function()? signout,
  }) {
    return signout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppUser value)? loaded,
    TResult Function()? signUpWithUsernameAndPassword,
    TResult Function()? unsignedIn,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? signedIn,
    TResult Function()? signout,
    required TResult orElse(),
  }) {
    if (signout != null) {
      return signout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserDataLoaded value) loaded,
    required TResult Function(UserSignUpWithUserNameAndPassword value)
        signUpWithUsernameAndPassword,
    required TResult Function(UserUnsignedIn value) unsignedIn,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserErrorDetails value) error,
    required TResult Function(UserSignedIn value) signedIn,
    required TResult Function(UserSignout value) signout,
  }) {
    return signout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserDataLoaded value)? loaded,
    TResult Function(UserSignUpWithUserNameAndPassword value)?
        signUpWithUsernameAndPassword,
    TResult Function(UserUnsignedIn value)? unsignedIn,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserErrorDetails value)? error,
    TResult Function(UserSignedIn value)? signedIn,
    TResult Function(UserSignout value)? signout,
  }) {
    return signout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserDataLoaded value)? loaded,
    TResult Function(UserSignUpWithUserNameAndPassword value)?
        signUpWithUsernameAndPassword,
    TResult Function(UserUnsignedIn value)? unsignedIn,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserErrorDetails value)? error,
    TResult Function(UserSignedIn value)? signedIn,
    TResult Function(UserSignout value)? signout,
    required TResult orElse(),
  }) {
    if (signout != null) {
      return signout(this);
    }
    return orElse();
  }
}

abstract class UserSignout implements UserApplication {
  const factory UserSignout() = _$UserSignout;
}
