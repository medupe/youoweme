import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uome/application/lendee/lendee_application.dart';
import 'package:uome/core/helper/exceptions.dart';
import 'package:uome/notifier/lendee_notifier.dart';
import 'package:uome/providers/user_provider.dart';
import 'package:uome/repository/lendee/lendee_repository.dart';

final lendeeRepositoryProvider = Provider.autoDispose<LendeeRepository>(
  (ref) => LendeeRepository(ref),
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
