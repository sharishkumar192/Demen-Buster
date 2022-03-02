import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

class Progress extends StatefulWidget {
  @override
  _ProgressState createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  int count = 0;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  List list = [];
  String getUID() {
    final User user = _auth.currentUser;
    return user.uid;
  }

  List setData(uid) {
    final list1 = [];
    Future<QuerySnapshot> _shot = FirebaseFirestore.instance
        .collection("/scores/${uid}/nestedScores/")
        .get();
    _shot.then(
      (val) {
        count += 1;
        print("/scores/${uid}/nestedScores/");
        for (var doc in val.docs) {
          list1.add([Text(doc.data()['date']), Text(doc.data()['score'])]);
        }
        setState(() {
          this.list = list1;
        });
      },
    );

    print(list);
    return list;
  }

  @override
  Widget build(BuildContext context) {
    final String uid = getUID();
    list = setData(uid);
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Progress"),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: List.generate(
          list.length,
          (index) {
            return Container(
              color: Colors.blue,
              height:10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [list[index][0], list[index][1]],
              ),
            );
          },
        ),
      ),
    );
  }
}
