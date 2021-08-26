// main.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wankolota/model/users/app_user.dart';

part 'user_application.freezed.dart';

@freezed
class UserApplication with _$UserApplication {
  const factory UserApplication(AppUser value) = UserData;

  const factory UserApplication.loaded() = UserDataLoaded;
  const factory UserApplication.loading() = UserLoading;
  const factory UserApplication.error([String? message]) = UserErrorDetails;
  const factory UserApplication.initial() = UserInitial;
}
