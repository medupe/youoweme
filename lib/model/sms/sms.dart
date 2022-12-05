import 'package:freezed_annotation/freezed_annotation.dart';
part 'sms.g.dart';
part 'sms.freezed.dart';

@freezed
class Sms with _$Sms {
  factory Sms(
      {@Default('Wankolota') String? sender,
      required String message,
      required String destination}) = _Sms;
  factory Sms.fromJson(Map<String, dynamic> json) => _$SmsFromJson(json);
}

@freezed
class Authentication with _$Authentication {
  factory Authentication({
    String? token,
  }) = _Authentication;
  factory Authentication.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationFromJson(json);
}
