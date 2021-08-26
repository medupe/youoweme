// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lendee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Lendee _$_$_LendeeFromJson(Map<String, dynamic> json) {
  return _$_Lendee(
    fullname: json['fullname'] as String?,
    amount: (json['amount'] as num?)?.toDouble(),
    duedate: json['duedate'] == null
        ? null
        : DateTime.parse(json['duedate'] as String),
    lendDate: json['lendDate'] == null
        ? null
        : DateTime.parse(json['lendDate'] as String),
    status: json['status'] as bool?,
    id: json['id'] as String?,
  );
}

Map<String, dynamic> _$_$_LendeeToJson(_$_Lendee instance) => <String, dynamic>{
      'fullname': instance.fullname,
      'amount': instance.amount,
      'duedate': instance.duedate?.toIso8601String(),
      'lendDate': instance.lendDate?.toIso8601String(),
      'status': instance.status,
      'id': instance.id,
    };
