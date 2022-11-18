import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wankolota/application/user/user_application.dart';
import 'package:wankolota/core/helper/exceptions.dart';
import 'package:wankolota/model/sign_in/sign_in.dart';
import 'package:wankolota/model/sign_up/sign_up.dart';

import 'package:wankolota/providers/user_provider.dart';

class UserNotifier extends StateNotifier<UserApplication> {
  final Ref _ref;

  UserNotifier(this._ref)
      : super(
          UserApplication.loading(),
        ) {
    getUser();
  }

  Future<void> getUser() async {
    try {
      state = UserLoading();
      final _user = await _ref.read(userRepositoryProvider).getUser();
      if (_user == null) {
        state = UserUnsignedIn();
      } else {
        state = UserDataLoaded(_user);
      }
    } on AppException catch (_) {
      state = UserErrorDetails(_.toString());
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      state = UserLoading();
      await _ref.read(userRepositoryProvider).saveGoogleUserInfomration();
      final _user = await _ref.read(userRepositoryProvider).getUser();

      state = UserDataLoaded(_user!);
    } on AppException catch (_) {
      state = UserErrorDetails(_.toString());
    }
  }

  Future<void> signUpWithUsernameAndPassword(
      SignUpRequest signUpRequest) async {
    try {
      state = UserLoading();
      Future.delayed(Duration(minutes: 1));
      await _ref
          .read(userRepositoryProvider)
          .signUpWithUsernameAndPassword(signUpRequest);
      final _user = await _ref.read(userRepositoryProvider).getUser();
      state = UserSignUpWithUserNameAndPassword();
      state = UserDataLoaded(_user!);
    } on AppException catch (e) {
      state = UserErrorDetails(e.message);
    }
  }

  Future<void> signInWithUsernameAndPassword(SignInRequest sign) async {
    try {
      state = UserLoading();

      await _ref
          .read(userRepositoryProvider)
          .signInWithUsernameAndPassword(sign);

      final _user = await _ref.read(userRepositoryProvider).getUser();

      state = UserDataLoaded(_user!);
    } on AppException catch (e) {
      state = UserErrorDetails(e.message);
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
      await _ref.read(userRepositoryProvider).signOutGoogle();

      state = UserSignout();
    } on AppException catch (_) {
      state = UserErrorDetails(_.toString());
    }
  }
}
