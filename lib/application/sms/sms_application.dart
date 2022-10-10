// main.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sms_application.freezed.dart';

@freezed
class SmsApplication with _$SmsApplication {
  const factory SmsApplication.loaded() = SmsLoaded;
  const factory SmsApplication.loading() = SmsLoading;

  const factory SmsApplication.error([String? message]) = SmsErrorDetails;
}
