// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'lendee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Lendee _$LendeeFromJson(Map<String, dynamic> json) {
  return _Lendee.fromJson(json);
}

/// @nodoc
class _$LendeeTearOff {
  const _$LendeeTearOff();

  _Lendee call(
      {String? fullname,
      double? amount,
      DateTime? duedate,
      DateTime? lendDate,
      bool? status,
      String? id}) {
    return _Lendee(
      fullname: fullname,
      amount: amount,
      duedate: duedate,
      lendDate: lendDate,
      status: status,
      id: id,
    );
  }

  Lendee fromJson(Map<String, Object> json) {
    return Lendee.fromJson(json);
  }
}

/// @nodoc
const $Lendee = _$LendeeTearOff();

/// @nodoc
mixin _$Lendee {
  String? get fullname => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  DateTime? get duedate => throw _privateConstructorUsedError;
  DateTime? get lendDate => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LendeeCopyWith<Lendee> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LendeeCopyWith<$Res> {
  factory $LendeeCopyWith(Lendee value, $Res Function(Lendee) then) =
      _$LendeeCopyWithImpl<$Res>;
  $Res call(
      {String? fullname,
      double? amount,
      DateTime? duedate,
      DateTime? lendDate,
      bool? status,
      String? id});
}

/// @nodoc
class _$LendeeCopyWithImpl<$Res> implements $LendeeCopyWith<$Res> {
  _$LendeeCopyWithImpl(this._value, this._then);

  final Lendee _value;
  // ignore: unused_field
  final $Res Function(Lendee) _then;

  @override
  $Res call({
    Object? fullname = freezed,
    Object? amount = freezed,
    Object? duedate = freezed,
    Object? lendDate = freezed,
    Object? status = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      fullname: fullname == freezed
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      duedate: duedate == freezed
          ? _value.duedate
          : duedate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lendDate: lendDate == freezed
          ? _value.lendDate
          : lendDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LendeeCopyWith<$Res> implements $LendeeCopyWith<$Res> {
  factory _$LendeeCopyWith(_Lendee value, $Res Function(_Lendee) then) =
      __$LendeeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? fullname,
      double? amount,
      DateTime? duedate,
      DateTime? lendDate,
      bool? status,
      String? id});
}

/// @nodoc
class __$LendeeCopyWithImpl<$Res> extends _$LendeeCopyWithImpl<$Res>
    implements _$LendeeCopyWith<$Res> {
  __$LendeeCopyWithImpl(_Lendee _value, $Res Function(_Lendee) _then)
      : super(_value, (v) => _then(v as _Lendee));

  @override
  _Lendee get _value => super._value as _Lendee;

  @override
  $Res call({
    Object? fullname = freezed,
    Object? amount = freezed,
    Object? duedate = freezed,
    Object? lendDate = freezed,
    Object? status = freezed,
    Object? id = freezed,
  }) {
    return _then(_Lendee(
      fullname: fullname == freezed
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      duedate: duedate == freezed
          ? _value.duedate
          : duedate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lendDate: lendDate == freezed
          ? _value.lendDate
          : lendDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Lendee implements _Lendee {
  _$_Lendee(
      {this.fullname,
      this.amount,
      this.duedate,
      this.lendDate,
      this.status,
      this.id});

  factory _$_Lendee.fromJson(Map<String, dynamic> json) =>
      _$_$_LendeeFromJson(json);

  @override
  final String? fullname;
  @override
  final double? amount;
  @override
  final DateTime? duedate;
  @override
  final DateTime? lendDate;
  @override
  final bool? status;
  @override
  final String? id;

  @override
  String toString() {
    return 'Lendee(fullname: $fullname, amount: $amount, duedate: $duedate, lendDate: $lendDate, status: $status, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Lendee &&
            (identical(other.fullname, fullname) ||
                const DeepCollectionEquality()
                    .equals(other.fullname, fullname)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.duedate, duedate) ||
                const DeepCollectionEquality()
                    .equals(other.duedate, duedate)) &&
            (identical(other.lendDate, lendDate) ||
                const DeepCollectionEquality()
                    .equals(other.lendDate, lendDate)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fullname) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(duedate) ^
      const DeepCollectionEquality().hash(lendDate) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$LendeeCopyWith<_Lendee> get copyWith =>
      __$LendeeCopyWithImpl<_Lendee>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LendeeToJson(this);
  }
}

abstract class _Lendee implements Lendee {
  factory _Lendee(
      {String? fullname,
      double? amount,
      DateTime? duedate,
      DateTime? lendDate,
      bool? status,
      String? id}) = _$_Lendee;

  factory _Lendee.fromJson(Map<String, dynamic> json) = _$_Lendee.fromJson;

  @override
  String? get fullname => throw _privateConstructorUsedError;
  @override
  double? get amount => throw _privateConstructorUsedError;
  @override
  DateTime? get duedate => throw _privateConstructorUsedError;
  @override
  DateTime? get lendDate => throw _privateConstructorUsedError;
  @override
  bool? get status => throw _privateConstructorUsedError;
  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LendeeCopyWith<_Lendee> get copyWith => throw _privateConstructorUsedError;
}
