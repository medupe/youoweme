import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wankolota/application/user/user_application.dart';

import 'package:wankolota/providers/user_provider.dart';

class UserNotifier extends StateNotifier<UserApplication> {
  final Reader _read;

  UserNotifier(this._read)
      : super(
          UserApplication.loading(),
        ) {
    getUser();
  }

  Future<void> getUser() async {
    try {
      state = UserLoading();
      final _user = await _read(userRepositoryProvider).getUser();
      if (_user == null) {
        state = UserUnsignedIn();
      } else {
        state = UserDataLoaded(_user);
      }
    } on Exception catch (_) {
      state = UserErrorDetails(_.toString());
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      state = UserLoading();
      await _read(userRepositoryProvider).saveGoogleUserInfomration();
      final _user = await _read(userRepositoryProvider).getUser();

      state = UserDataLoaded(_user!);
    } on Exception catch (_) {
      state = UserErrorDetails(_.toString());
    }
  }

  /*Future<void> signInWithFacebook() async {
    try {
      state = UserLoading();
      await userRepository.saveFacebookUserInfomration();
      final _user = await userRepository.getUser();

      state = UserDataLoaded(_user!);
    } on Exception catch (_) {
      state = UserErrorDetails(_.toString());
    }
  }
*/
  Future<void> signOut() async {
    try {
      state = UserLoading();
      await _read(userRepositoryProvider).signOutGoogle();

      state = UserSignout();
    } on Exception catch (_) {
      state = UserErrorDetails(_.toString());
    }
  }
}
