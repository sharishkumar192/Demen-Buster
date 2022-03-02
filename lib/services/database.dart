import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});
  //ref to collection
  final CollectionReference scoreCollection =
      FirebaseFirestore.instance.collection("scores");


  Future updateUserData(String date, String score) async {
        return await scoreCollection.doc(uid).collection("nestedScores").doc('_').set({
      'date': date,
      'score': score,
    });
  }

  

  //get scorestreams
  Stream<QuerySnapshot> get scores {
    return scoreCollection.snapshots();
  }
}
