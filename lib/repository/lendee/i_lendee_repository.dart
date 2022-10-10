import 'package:wankolota/model/lendee/lendee.dart';
import 'package:wankolota/model/lendee_history/lendee_history.dart';

abstract class ILendeeRepository {
  Future<List<Lendee>> getLendee(String userID);
  Future addLendee(String userId, Lendee data);
  Future updateLendee(String userId, Lendee data);
  Future updateLendeeHistory(
      String userId, String documentID, LendeeHistory data);
  Future deleteLendee(String userId, Lendee data);
  Future<List<LendeeHistory>> getHistory(String userId, String documentId);
}
