import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wankolota/application/sms/sms_application.dart';
import 'package:wankolota/notifier/sms_notifier.dart';
import 'package:wankolota/repository/sms/sms_repository.dart';

final smsRepositoryProvider = Provider<SmsRepository>(
  (ref) => SmsRepository(),
);

final smsNotifierProvider = StateNotifierProvider<SmsNotifier, SmsApplication>(
  (ref) => SmsNotifier(ref.watch(smsRepositoryProvider)),
);
