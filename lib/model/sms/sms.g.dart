// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Sms _$$_SmsFromJson(Map<String, dynamic> json) => _$_Sms(
      sender: json['sender'] as String? ?? 'Wankolota',
      message: json['message'] as String,
      recipients: (json['recipients'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_SmsToJson(_$_Sms instance) => <String, dynamic>{
      'sender': instance.sender,
      'message': instance.message,
      'recipients': instance.recipients,
    };
