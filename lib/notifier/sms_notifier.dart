import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wankolota/application/sms/sms_application.dart';

import 'package:wankolota/model/bulksms/bulk_sms.dart';

import 'package:wankolota/repository/sms/sms_repository.dart';

class SmsNotifier extends StateNotifier<SmsApplication> {
  final SmsRepository smsRepository;
  SmsNotifier(this.smsRepository)
      : super(
          SmsApplication.loading(),
        );

  Future<void> sendSMS(BulkSms sms) async {
    try {
      state = SmsLoading();
      await smsRepository.sendSMS(sms);

      state = SmsLoaded();
    } on Exception catch (_) {
      state = SmsErrorDetails("Could not send  sms notification");
    }
  }
}
