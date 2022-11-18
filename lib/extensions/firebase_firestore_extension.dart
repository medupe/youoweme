import 'package:cloud_firestore/cloud_firestore.dart';

extension FirebaseFirestoreX on FirebaseFirestore {
  CollectionReference userListRef(String userId) =>
      collection('lendee').doc(userId).collection("userInformation");
  CollectionReference userCollectionRef() => collection('users');

  CollectionReference historyListRef(String userId, String documentID) =>
      collection('lendee')
          .doc(userId)
          .collection("userInformation")
          .doc(documentID)
          .collection("history");
}
