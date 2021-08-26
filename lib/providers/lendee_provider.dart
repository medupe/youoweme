import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wankolota/application/lendee/lendee_application.dart';
import 'package:wankolota/notifier/lendee_notifier.dart';
import 'package:wankolota/repository/lendee/lendee_repository.dart';

final lendeeRepositoryProvider = Provider<LendeeRepository>(
  (ref) => LendeeRepository(),
);

final lendeeNotifierProvider =
    StateNotifierProvider<LendeeNotifier, LendeeApplication>(
  (ref) => LendeeNotifier(ref.watch(lendeeRepositoryProvider)),
);
