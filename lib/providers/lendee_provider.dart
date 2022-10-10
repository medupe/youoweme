import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wankolota/application/lendee/lendee_application.dart';
import 'package:wankolota/core/classes/percentage_calculator.dart';
import 'package:wankolota/core/helper/exceptions.dart';
import 'package:wankolota/notifier/lendee_notifier.dart';

import 'package:wankolota/providers/user_provider.dart';
import 'package:wankolota/repository/lendee/lendee_repository.dart';

final lendeeRepositoryProvider = Provider.autoDispose<LendeeRepository>(
  (ref) => LendeeRepository(ref.read),
);

final lendeeNotifierProvider =
    StateNotifierProvider.autoDispose<LendeeNotifier, LendeeApplication>((ref) {
  final user =
      ref.read(userNotifierProvider).whenOrNull(loaded: ((value) => value));
  return LendeeNotifier(ref, user);
});
final lendeeExceptionProvider = StateProvider.autoDispose<AppException?>(
  (_) => null,
);
final calculateInterestProvider = StateProvider<double>((
  ref,
) {
  double fullamount = 0.0;
  final a = ref.watch(interestNotifer.state).state;
  fullamount = ref.watch(amountNotifer.state).state +
      (ref.watch(amountNotifer.state).state *
          (ref.watch(interestNotifer.state).state / 100));
  return fullamount;
});

final amountNotifer = StateProvider(
  (ref) => 0.0,
);
final interestNotifer = StateProvider(
  (ref) => 0.0,
);
