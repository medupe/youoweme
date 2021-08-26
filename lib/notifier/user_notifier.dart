import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wankolota/application/user/user_application.dart';
import 'package:wankolota/repository/user/userRepository.dart';

class UserNotifier extends StateNotifier<UserApplication> {
  final UserRepository userRepository;
  UserNotifier(this.userRepository)
      : super(
          UserApplication.initial(),
        );

  Future<void> getUser() async {
    try {
      state = UserLoading();
      final _user = await userRepository.getUser();
      state = UserApplication(_user);
    } on Exception catch (_) {
      state = UserErrorDetails(_.toString());
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      state = UserLoading();
      await userRepository.saveGoogleUserInfomration();
      final _user = await userRepository.getUser();

      state = UserApplication(_user);
    } on Exception catch (_) {
      state = UserErrorDetails(_.toString());
    }
  }

  Future<void> signOut() async {
    try {
      state = UserLoading();
      await userRepository.signOutGoogle();

      state = UserDataLoaded();
    } on Exception catch (_) {
      state = UserErrorDetails(_.toString());
    }
  }
}
