import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up.freezed.dart';
part 'sign_up.g.dart';

@freezed
class SignUpRequest with _$SignUpRequest {
  const SignUpRequest._();
  const factory SignUpRequest(
      {required String displayName,
      required String email,
      required String password}) = _SignUpRequest;
  factory SignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestFromJson(json);

  Map<String, dynamic> toDocument() => toJson()..remove('id');
}
