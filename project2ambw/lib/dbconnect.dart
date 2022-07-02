import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project2ambw/dataclass.dart';

CollectionReference tbUser = FirebaseFirestore.instance.collection("tableUser");

class DatabaseUser {
  static Stream<QuerySnapshot> getData() {
    return tbUser.snapshots();
  }

  static Future<void> tambahData({required dataUser dtUser}) async {
    DocumentReference docRef = tbUser.doc(dtUser.email);

    await docRef
        .set(dtUser.toJson())
        .whenComplete(() => print("data berhasil inpur"))
        .catchError((e) => print(e));
  }
}
