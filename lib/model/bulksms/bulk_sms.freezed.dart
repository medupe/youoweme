// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bulk_sms.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BulkSms _$BulkSmsFromJson(Map<String, dynamic> json) {
  return _BulkSms.fromJson(json);
}

/// @nodoc
mixin _$BulkSms {
  String get destination => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BulkSmsCopyWith<BulkSms> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BulkSmsCopyWith<$Res> {
  factory $BulkSmsCopyWith(BulkSms value, $Res Function(BulkSms) then) =
      _$BulkSmsCopyWithImpl<$Res>;
  $Res call({String destination, String content});
}

/// @nodoc
class _$BulkSmsCopyWithImpl<$Res> implements $BulkSmsCopyWith<$Res> {
  _$BulkSmsCopyWithImpl(this._value, this._then);

  final BulkSms _value;
  // ignore: unused_field
  final $Res Function(BulkSms) _then;

  @override
  $Res call({
    Object? destination = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_BulkSmsCopyWith<$Res> implements $BulkSmsCopyWith<$Res> {
  factory _$$_BulkSmsCopyWith(
          _$_BulkSms value, $Res Function(_$_BulkSms) then) =
      __$$_BulkSmsCopyWithImpl<$Res>;
  @override
  $Res call({String destination, String content});
}

/// @nodoc
class __$$_BulkSmsCopyWithImpl<$Res> extends _$BulkSmsCopyWithImpl<$Res>
    implements _$$_BulkSmsCopyWith<$Res> {
  __$$_BulkSmsCopyWithImpl(_$_BulkSms _value, $Res Function(_$_BulkSms) _then)
      : super(_value, (v) => _then(v as _$_BulkSms));

  @override
  _$_BulkSms get _value => super._value as _$_BulkSms;

  @override
  $Res call({
    Object? destination = freezed,
    Object? content = freezed,
  }) {
    return _then(_$_BulkSms(
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BulkSms implements _BulkSms {
  const _$_BulkSms({required this.destination, required this.content});

  factory _$_BulkSms.fromJson(Map<String, dynamic> json) =>
      _$$_BulkSmsFromJson(json);

  @override
  final String destination;
  @override
  final String content;

  @override
  String toString() {
    return 'BulkSms(destination: $destination, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BulkSms &&
            const DeepCollectionEquality()
                .equals(other.destination, destination) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(destination),
      const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$$_BulkSmsCopyWith<_$_BulkSms> get copyWith =>
      __$$_BulkSmsCopyWithImpl<_$_BulkSms>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BulkSmsToJson(this);
  }
}

abstract class _BulkSms implements BulkSms {
  const factory _BulkSms(
      {required final String destination,
      required final String content}) = _$_BulkSms;

  factory _BulkSms.fromJson(Map<String, dynamic> json) = _$_BulkSms.fromJson;

  @override
  String get destination;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_BulkSmsCopyWith<_$_BulkSms> get copyWith =>
      throw _privateConstructorUsedError;
}
