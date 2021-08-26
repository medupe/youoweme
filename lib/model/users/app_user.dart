import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_user.g.dart';
part 'app_user.freezed.dart';

@freezed
class AppUser with _$AppUser {
  factory AppUser({String? userID, String? userName}) = _AppUser;
  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);
}
