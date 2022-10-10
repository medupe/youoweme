import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'lendee_history.freezed.dart';
part 'lendee_history.g.dart';

@freezed
class LendeeHistory with _$LendeeHistory {
  const LendeeHistory._();
  const factory LendeeHistory(
      {required double amount,
      required DateTime transactionDate,
      String? id}) = _LendeeHistory;
  factory LendeeHistory.fromJson(Map<String, dynamic> json) =>
      _$LendeeHistoryFromJson(json);

  factory LendeeHistory.fromDocument(DocumentSnapshot doc) {
    final data = doc.data();
    return LendeeHistory.fromJson(data as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
  Map<String, dynamic> toDocument() => toJson()..remove('id');
}
