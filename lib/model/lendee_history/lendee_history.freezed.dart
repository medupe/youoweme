// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'lendee_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LendeeHistory _$LendeeHistoryFromJson(Map<String, dynamic> json) {
  return _LendeeHistory.fromJson(json);
}

/// @nodoc
mixin _$LendeeHistory {
  double get amount => throw _privateConstructorUsedError;
  DateTime get transactionDate => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LendeeHistoryCopyWith<LendeeHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LendeeHistoryCopyWith<$Res> {
  factory $LendeeHistoryCopyWith(
          LendeeHistory value, $Res Function(LendeeHistory) then) =
      _$LendeeHistoryCopyWithImpl<$Res>;
  $Res call({double amount, DateTime transactionDate, String? id});
}

/// @nodoc
class _$LendeeHistoryCopyWithImpl<$Res>
    implements $LendeeHistoryCopyWith<$Res> {
  _$LendeeHistoryCopyWithImpl(this._value, this._then);

  final LendeeHistory _value;
  // ignore: unused_field
  final $Res Function(LendeeHistory) _then;

  @override
  $Res call({
    Object? amount = freezed,
    Object? transactionDate = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      transactionDate: transactionDate == freezed
          ? _value.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_LendeeHistoryCopyWith<$Res>
    implements $LendeeHistoryCopyWith<$Res> {
  factory _$$_LendeeHistoryCopyWith(
          _$_LendeeHistory value, $Res Function(_$_LendeeHistory) then) =
      __$$_LendeeHistoryCopyWithImpl<$Res>;
  @override
  $Res call({double amount, DateTime transactionDate, String? id});
}

/// @nodoc
class __$$_LendeeHistoryCopyWithImpl<$Res>
    extends _$LendeeHistoryCopyWithImpl<$Res>
    implements _$$_LendeeHistoryCopyWith<$Res> {
  __$$_LendeeHistoryCopyWithImpl(
      _$_LendeeHistory _value, $Res Function(_$_LendeeHistory) _then)
      : super(_value, (v) => _then(v as _$_LendeeHistory));

  @override
  _$_LendeeHistory get _value => super._value as _$_LendeeHistory;

  @override
  $Res call({
    Object? amount = freezed,
    Object? transactionDate = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_LendeeHistory(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      transactionDate: transactionDate == freezed
          ? _value.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LendeeHistory extends _LendeeHistory {
  const _$_LendeeHistory(
      {required this.amount, required this.transactionDate, this.id})
      : super._();

  factory _$_LendeeHistory.fromJson(Map<String, dynamic> json) =>
      _$$_LendeeHistoryFromJson(json);

  @override
  final double amount;
  @override
  final DateTime transactionDate;
  @override
  final String? id;

  @override
  String toString() {
    return 'LendeeHistory(amount: $amount, transactionDate: $transactionDate, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LendeeHistory &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality()
                .equals(other.transactionDate, transactionDate) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(transactionDate),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_LendeeHistoryCopyWith<_$_LendeeHistory> get copyWith =>
      __$$_LendeeHistoryCopyWithImpl<_$_LendeeHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LendeeHistoryToJson(this);
  }
}

abstract class _LendeeHistory extends LendeeHistory {
  const factory _LendeeHistory(
      {required final double amount,
      required final DateTime transactionDate,
      final String? id}) = _$_LendeeHistory;
  const _LendeeHistory._() : super._();

  factory _LendeeHistory.fromJson(Map<String, dynamic> json) =
      _$_LendeeHistory.fromJson;

  @override
  double get amount;
  @override
  DateTime get transactionDate;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_LendeeHistoryCopyWith<_$_LendeeHistory> get copyWith =>
      throw _privateConstructorUsedError;
}
