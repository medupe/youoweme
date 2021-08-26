import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wankolota/model/lendee/lendee.dart';
import 'package:wankolota/repository/lendee/i_lendee_repository.dart';

class LendeeRepository implements ILendeeRepository {
  final CollectionReference _lendeeFirebase =
      FirebaseFirestore.instance.collection('kendee');

  @override
  Future<List<Lendee>> getLendee() async {
    QuerySnapshot query = await _lendeeFirebase.get();
    return query.docs
        .map((document) {
          final Map<String, dynamic> data =
              document.data() as Map<String, dynamic>;
          data.update("id", (value) => document.id);

          return Lendee.fromJson(data);
        })
        .where((element) => element.status == true)
        .toList();
  }

  @override
  Future addLendee(Lendee data) async {
    await _lendeeFirebase.doc().set(data.toJson());
  }

  @override
  Future deleteLendee(Lendee data) async {
    await _lendeeFirebase.doc(data.id).delete();
  }

  @override
  Future updateLendee(Lendee data) async {
    await _lendeeFirebase.doc(data.id).update(data.toJson());
  }
}
