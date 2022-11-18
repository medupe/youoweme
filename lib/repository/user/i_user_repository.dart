import 'package:firebase_auth/firebase_auth.dart';
import 'package:wankolota/model/sign_in/sign_in.dart';
import 'package:wankolota/model/sign_up/sign_up.dart';
import 'package:wankolota/model/users/app_user.dart';

abstract class IUserRepository {
  AppUser? getUser();
  Future saveGoogleUserInfomration();
  Future saveFacebookUserInfomration();
  Future signOutGoogle();
  Future signOutFacebook();
  Future signUpWithUsernameAndPassword(SignUpRequest signup);
  Future signInWithUsernameAndPassword(SignInRequest signInReuest);

  Stream<User?> get authStateChanges;
}
