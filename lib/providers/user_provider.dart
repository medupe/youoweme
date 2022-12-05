import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uome/application/user/user_application.dart';
import 'package:uome/notifier/user_notifier.dart';
import 'package:uome/repository/user/userRepository.dart';

final userRepositoryProvider = Provider<UserRepository>(
  (ref) => UserRepository(ref),
);

final userNotifierProvider =
    StateNotifierProvider<UserNotifier, UserApplication>(
  (ref) => UserNotifier(ref),
);
