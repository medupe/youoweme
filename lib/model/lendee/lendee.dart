import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lendee.freezed.dart';
part 'lendee.g.dart';

@freezed
class Lendee with _$Lendee {
  const Lendee._();
  const factory Lendee(
      {required String fullname,
      required double amount,
      required String userId,
      double? interestRate,
      double? finalAmount,
      @Default('') String cellNumber,
      required DateTime duedate,
      DateTime? lendDate,
      bool? status,
      String? id}) = _Lendee;
  factory Lendee.fromJson(Map<String, dynamic> json) => _$LendeeFromJson(json);

  factory Lendee.fromDocument(DocumentSnapshot doc) {
    final data = doc.data();
    return Lendee.fromJson(data as Map<String, dynamic>).copyWith(id: doc.id);
  }
  Map<String, dynamic> toDocument() => toJson()..remove('id');
}
