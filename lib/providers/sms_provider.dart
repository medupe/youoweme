import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uome/application/sms/sms_application.dart';
import 'package:uome/notifier/sms_notifier.dart';
import 'package:uome/repository/sms/sms_repository.dart';

final smsRepositoryProvider = Provider<SmsRepository>(
  (ref) => SmsRepository(),
);

final smsNotifierProvider = StateNotifierProvider<SmsNotifier, SmsApplication>(
  (ref) => SmsNotifier(ref.watch(smsRepositoryProvider)),
);
