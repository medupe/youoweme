// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lendee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Lendee _$$_LendeeFromJson(Map<String, dynamic> json) => _$_Lendee(
      fullname: json['fullname'] as String,
      amount: (json['amount'] as num).toDouble(),
      userId: json['userId'] as String,
      interestRate: (json['interestRate'] as num?)?.toDouble(),
      finalAmount: (json['finalAmount'] as num?)?.toDouble(),
      cellNumber: json['cellNumber'] as String? ?? '',
      duedate: DateTime.parse(json['duedate'] as String),
      lendDate: json['lendDate'] == null
          ? null
          : DateTime.parse(json['lendDate'] as String),
      status: json['status'] as bool?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_LendeeToJson(_$_Lendee instance) => <String, dynamic>{
      'fullname': instance.fullname,
      'amount': instance.amount,
      'userId': instance.userId,
      'interestRate': instance.interestRate,
      'finalAmount': instance.finalAmount,
      'cellNumber': instance.cellNumber,
      'duedate': instance.duedate.toIso8601String(),
      'lendDate': instance.lendDate?.toIso8601String(),
      'status': instance.status,
      'id': instance.id,
    };
