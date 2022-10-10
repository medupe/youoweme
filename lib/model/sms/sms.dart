import 'package:freezed_annotation/freezed_annotation.dart';
part 'sms.g.dart';
part 'sms.freezed.dart';

@freezed
class Sms with _$Sms {
  factory Sms(
      {@Default('Wankolota') String? sender,
      required String message,
      required List<String> recipients}) = _Sms;
  factory Sms.fromJson(Map<String, dynamic> json) => _$SmsFromJson(json);
}
