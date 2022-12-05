// main.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uome/model/users/app_user.dart';
part 'user_application.freezed.dart';

@freezed
class UserApplication with _$UserApplication {
  const factory UserApplication.loaded(AppUser value) = UserDataLoaded;
  const factory UserApplication.signUpWithUsernameAndPassword() =
      UserSignUpWithUserNameAndPassword;
  const factory UserApplication.unsignedIn() = UserUnsignedIn;
  const factory UserApplication.loading() = UserLoading;
  const factory UserApplication.error([String? message]) = UserErrorDetails;
  const factory UserApplication.signedIn() = UserSignedIn;
  const factory UserApplication.signout() = UserSignout;
}
