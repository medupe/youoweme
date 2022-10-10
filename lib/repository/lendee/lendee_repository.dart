import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:wankolota/model/lendee/lendee.dart';
import 'package:wankolota/model/lendee_history/lendee_history.dart';
import 'package:wankolota/repository/general_provider.dart';
import 'package:wankolota/repository/lendee/i_lendee_repository.dart';
import 'package:wankolota/extensions/firebase_firestore_extension.dart';

class LendeeRepository implements ILendeeRepository {
  final Reader _read;
  LendeeRepository(this._read);
  @override
  Future<List<Lendee>> getLendee(String userID) async {
    /*   QuerySnapshot query =
        await _lendeeFirebase.where("userId", isEqualTo: userID).get();


    return query.docs.map((document) {
      final Map<String, dynamic> data = document.data() as Map<String, dynamic>;
      data.update("id", (value) => document.id);

      return Lendee.fromJson(data);
    }).toList();*/
    final query =
        await _read(firebaseFireStoreProvider).userListRef(userID).get();
    return query.docs.map((e) {
      final l = Lendee.fromDocument(e);
      return l;
    }).toList();
  }

  @override
  Future addLendee(String userId, Lendee data) async {
    await _read(firebaseFireStoreProvider)
        .userListRef(userId)
        .add(data.toDocument());
    //_lendeeFirebase.doc().set(data.toJson());
  }

  @override
  Future deleteLendee(String userId, Lendee data) async {
    await _read(firebaseFireStoreProvider)
        .userListRef(userId)
        .doc(data.id)
        .delete();
    // await _lendeeFirebase.doc(data.id).delete();
  }

  @override
  Future updateLendee(String userId, Lendee data) async {
    final history =
        LendeeHistory(amount: data.amount, transactionDate: DateTime.now());
    await _read(firebaseFireStoreProvider)
        .userListRef(userId)
        .doc(data.id)
        .update(data.toDocument());

    //   await _lendeeFirebase.doc(data.id).update(data.toJson());
  }

  @override
  Future<List<LendeeHistory>> getHistory(
      String userId, String documentId) async {
    final query = await _read(firebaseFireStoreProvider)
        .historyListRef(userId, documentId)
        .get();
    return query.docs.map((e) => LendeeHistory.fromDocument(e)).toList();
  }

  @override
  Future updateLendeeHistory(
      String userId, String documentID, LendeeHistory data) async {
    await _read(firebaseFireStoreProvider)
        .historyListRef(
          userId,
          documentID,
        )
        .add(data.toDocument());
  }
}
