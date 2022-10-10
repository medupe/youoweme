// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lendee_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LendeeHistory _$$_LendeeHistoryFromJson(Map<String, dynamic> json) =>
    _$_LendeeHistory(
      amount: (json['amount'] as num).toDouble(),
      transactionDate: DateTime.parse(json['transactionDate'] as String),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_LendeeHistoryToJson(_$_LendeeHistory instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'transactionDate': instance.transactionDate.toIso8601String(),
      'id': instance.id,
    };
