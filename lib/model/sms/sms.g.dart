// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Sms _$$_SmsFromJson(Map<String, dynamic> json) => _$_Sms(
      sender: json['sender'] as String? ?? 'Wankolota',
      message: json['message'] as String,
      destination: json['destination'] as String,
    );

Map<String, dynamic> _$$_SmsToJson(_$_Sms instance) => <String, dynamic>{
      'sender': instance.sender,
      'message': instance.message,
      'destination': instance.destination,
    };

_$_Authentication _$$_AuthenticationFromJson(Map<String, dynamic> json) =>
    _$_Authentication(
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$_AuthenticationToJson(_$_Authentication instance) =>
    <String, dynamic>{
      'token': instance.token,
    };
