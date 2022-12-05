// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sms.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Sms _$SmsFromJson(Map<String, dynamic> json) {
  return _Sms.fromJson(json);
}

/// @nodoc
mixin _$Sms {
  String? get sender => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get destination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SmsCopyWith<Sms> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmsCopyWith<$Res> {
  factory $SmsCopyWith(Sms value, $Res Function(Sms) then) =
      _$SmsCopyWithImpl<$Res>;
  $Res call({String? sender, String message, String destination});
}

/// @nodoc
class _$SmsCopyWithImpl<$Res> implements $SmsCopyWith<$Res> {
  _$SmsCopyWithImpl(this._value, this._then);

  final Sms _value;
  // ignore: unused_field
  final $Res Function(Sms) _then;

  @override
  $Res call({
    Object? sender = freezed,
    Object? message = freezed,
    Object? destination = freezed,
  }) {
    return _then(_value.copyWith(
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SmsCopyWith<$Res> implements $SmsCopyWith<$Res> {
  factory _$$_SmsCopyWith(_$_Sms value, $Res Function(_$_Sms) then) =
      __$$_SmsCopyWithImpl<$Res>;
  @override
  $Res call({String? sender, String message, String destination});
}

/// @nodoc
class __$$_SmsCopyWithImpl<$Res> extends _$SmsCopyWithImpl<$Res>
    implements _$$_SmsCopyWith<$Res> {
  __$$_SmsCopyWithImpl(_$_Sms _value, $Res Function(_$_Sms) _then)
      : super(_value, (v) => _then(v as _$_Sms));

  @override
  _$_Sms get _value => super._value as _$_Sms;

  @override
  $Res call({
    Object? sender = freezed,
    Object? message = freezed,
    Object? destination = freezed,
  }) {
    return _then(_$_Sms(
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Sms implements _Sms {
  _$_Sms(
      {this.sender = 'Wankolota',
      required this.message,
      required this.destination});

  factory _$_Sms.fromJson(Map<String, dynamic> json) => _$$_SmsFromJson(json);

  @override
  @JsonKey()
  final String? sender;
  @override
  final String message;
  @override
  final String destination;

  @override
  String toString() {
    return 'Sms(sender: $sender, message: $message, destination: $destination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sms &&
            const DeepCollectionEquality().equals(other.sender, sender) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.destination, destination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sender),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(destination));

  @JsonKey(ignore: true)
  @override
  _$$_SmsCopyWith<_$_Sms> get copyWith =>
      __$$_SmsCopyWithImpl<_$_Sms>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SmsToJson(this);
  }
}

abstract class _Sms implements Sms {
  factory _Sms(
      {final String? sender,
      required final String message,
      required final String destination}) = _$_Sms;

  factory _Sms.fromJson(Map<String, dynamic> json) = _$_Sms.fromJson;

  @override
  String? get sender;
  @override
  String get message;
  @override
  String get destination;
  @override
  @JsonKey(ignore: true)
  _$$_SmsCopyWith<_$_Sms> get copyWith => throw _privateConstructorUsedError;
}

Authentication _$AuthenticationFromJson(Map<String, dynamic> json) {
  return _Authentication.fromJson(json);
}

/// @nodoc
mixin _$Authentication {
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationCopyWith<Authentication> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationCopyWith<$Res> {
  factory $AuthenticationCopyWith(
          Authentication value, $Res Function(Authentication) then) =
      _$AuthenticationCopyWithImpl<$Res>;
  $Res call({String? token});
}

/// @nodoc
class _$AuthenticationCopyWithImpl<$Res>
    implements $AuthenticationCopyWith<$Res> {
  _$AuthenticationCopyWithImpl(this._value, this._then);

  final Authentication _value;
  // ignore: unused_field
  final $Res Function(Authentication) _then;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthenticationCopyWith<$Res>
    implements $AuthenticationCopyWith<$Res> {
  factory _$$_AuthenticationCopyWith(
          _$_Authentication value, $Res Function(_$_Authentication) then) =
      __$$_AuthenticationCopyWithImpl<$Res>;
  @override
  $Res call({String? token});
}

/// @nodoc
class __$$_AuthenticationCopyWithImpl<$Res>
    extends _$AuthenticationCopyWithImpl<$Res>
    implements _$$_AuthenticationCopyWith<$Res> {
  __$$_AuthenticationCopyWithImpl(
      _$_Authentication _value, $Res Function(_$_Authentication) _then)
      : super(_value, (v) => _then(v as _$_Authentication));

  @override
  _$_Authentication get _value => super._value as _$_Authentication;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$_Authentication(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Authentication implements _Authentication {
  _$_Authentication({this.token});

  factory _$_Authentication.fromJson(Map<String, dynamic> json) =>
      _$$_AuthenticationFromJson(json);

  @override
  final String? token;

  @override
  String toString() {
    return 'Authentication(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Authentication &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$_AuthenticationCopyWith<_$_Authentication> get copyWith =>
      __$$_AuthenticationCopyWithImpl<_$_Authentication>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthenticationToJson(this);
  }
}

abstract class _Authentication implements Authentication {
  factory _Authentication({final String? token}) = _$_Authentication;

  factory _Authentication.fromJson(Map<String, dynamic> json) =
      _$_Authentication.fromJson;

  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticationCopyWith<_$_Authentication> get copyWith =>
      throw _privateConstructorUsedError;
}
