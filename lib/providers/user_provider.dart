import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:wankolota/application/user/user_application.dart';

import 'package:wankolota/notifier/user_notifier.dart';

import 'package:wankolota/repository/user/userRepository.dart';

final userRepositoryProvider = Provider<UserRepository>(
  (ref) => UserRepository(),
);

final userNotifierProvider =
    StateNotifierProvider<UserNotifier, UserApplication>(
  (ref) => UserNotifier(ref.watch(userRepositoryProvider)),
);
