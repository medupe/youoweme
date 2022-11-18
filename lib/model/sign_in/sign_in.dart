import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in.freezed.dart';
part 'sign_in.g.dart';

@freezed
class SignInRequest with _$SignInRequest {
  const SignInRequest._();
  const factory SignInRequest(
      {required String email, required String password}) = _SignUpRequest;
  factory SignInRequest.fromJson(Map<String, dynamic> json) =>
      _$SignInRequestFromJson(json);

  Map<String, dynamic> toDocument() => toJson()..remove('id');
}
