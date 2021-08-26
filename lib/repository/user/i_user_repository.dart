import 'package:wankolota/model/users/app_user.dart';

abstract class IUserRepository {
  Future<AppUser> getUser();
  Future saveGoogleUserInfomration();
  Future signOutGoogle();
}
