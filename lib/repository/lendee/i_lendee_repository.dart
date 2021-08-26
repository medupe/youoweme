import 'package:wankolota/model/lendee/lendee.dart';

abstract class ILendeeRepository {
  Future<List<Lendee>> getLendee();
  Future addLendee(Lendee data);
  Future updateLendee(Lendee data);
  Future deleteLendee(Lendee data);
}
