import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';


class ScoreList extends StatefulWidget {
  @override
  _ScoreListState createState() => _ScoreListState();
}

class _ScoreListState extends State<ScoreList> {
  @override
  Widget build(BuildContext context) {
    final scores = Provider.of<QuerySnapshot>(context);
    for (var doc in scores.docs) {
      print(doc.data());
    }
    return Container();
  }
}
