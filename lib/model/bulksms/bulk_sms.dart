import 'package:freezed_annotation/freezed_annotation.dart';
part 'bulk_sms.freezed.dart';
part 'bulk_sms.g.dart';

@freezed
class BulkSms with _$BulkSms {
  const factory BulkSms({
    required String destination,
    required String content,
  }) = _BulkSms;
  factory BulkSms.fromJson(Map<String, dynamic> json) =>
      _$BulkSmsFromJson(json);
}
