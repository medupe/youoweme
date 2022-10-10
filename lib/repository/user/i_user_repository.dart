import 'package:firebase_auth/firebase_auth.dart';
import 'package:wankolota/model/users/app_user.dart';

abstract class IUserRepository {
  AppUser? getUser();
  Future saveGoogleUserInfomration();
  Future saveFacebookUserInfomration();
  Future signOutGoogle();
  Future signOutFacebook();
  Stream<User?> get authStateChanges;
}
