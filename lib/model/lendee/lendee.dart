import 'package:freezed_annotation/freezed_annotation.dart';
part 'lendee.freezed.dart';
part 'lendee.g.dart';

@freezed
class Lendee with _$Lendee {
  factory Lendee(
      {String? fullname,
      double? amount,
      DateTime? duedate,
      DateTime? lendDate,
      bool? status,
      String? id}) = _Lendee;
  factory Lendee.fromJson(Map<String, dynamic> json) => _$LendeeFromJson(json);
}
