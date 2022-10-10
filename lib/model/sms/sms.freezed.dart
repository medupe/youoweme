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
  List<String> get recipients => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SmsCopyWith<Sms> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmsCopyWith<$Res> {
  factory $SmsCopyWith(Sms value, $Res Function(Sms) then) =
      _$SmsCopyWithImpl<$Res>;
  $Res call({String? sender, String message, List<String> recipients});
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
    Object? recipients = freezed,
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
      recipients: recipients == freezed
          ? _value.recipients
          : recipients // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_SmsCopyWith<$Res> implements $SmsCopyWith<$Res> {
  factory _$$_SmsCopyWith(_$_Sms value, $Res Function(_$_Sms) then) =
      __$$_SmsCopyWithImpl<$Res>;
  @override
  $Res call({String? sender, String message, List<String> recipients});
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
    Object? recipients = freezed,
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
      recipients: recipients == freezed
          ? _value._recipients
          : recipients // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Sms implements _Sms {
  _$_Sms(
      {this.sender = 'Wankolota',
      required this.message,
      required final List<String> recipients})
      : _recipients = recipients;

  factory _$_Sms.fromJson(Map<String, dynamic> json) => _$$_SmsFromJson(json);

  @override
  @JsonKey()
  final String? sender;
  @override
  final String message;
  final List<String> _recipients;
  @override
  List<String> get recipients {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipients);
  }

  @override
  String toString() {
    return 'Sms(sender: $sender, message: $message, recipients: $recipients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sms &&
            const DeepCollectionEquality().equals(other.sender, sender) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other._recipients, _recipients));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sender),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_recipients));

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
      required final List<String> recipients}) = _$_Sms;

  factory _Sms.fromJson(Map<String, dynamic> json) = _$_Sms.fromJson;

  @override
  String? get sender;
  @override
  String get message;
  @override
  List<String> get recipients;
  @override
  @JsonKey(ignore: true)
  _$$_SmsCopyWith<_$_Sms> get copyWith => throw _privateConstructorUsedError;
}
