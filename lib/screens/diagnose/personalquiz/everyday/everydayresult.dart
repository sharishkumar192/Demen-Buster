import 'package:Demen_Buster/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:Demen_Buster/screens/diagnose/diagnose.dart';
import 'package:Demen_Buster/services/database.dart';
import 'package:Demen_Buster/screens/carecentres/carecentres.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

class EverydayResult extends StatefulWidget {
  final int simonLevel;
  final int celebrityPoints;
  final int patternPoints;
  final int total;
  EverydayResult({
    this.simonLevel = 0,
    this.celebrityPoints = 0,
    this.patternPoints = 0,
    this.total = 100,
  });

  @override
  _EverydayResultState createState() => _EverydayResultState();
}

class _EverydayResultState extends State<EverydayResult> {
  final CollectionReference scoreCollection =
      FirebaseFirestore.instance.collection("scores");

  @override
  Widget build(BuildContext context) {
    final String total =
        (widget.simonLevel + widget.celebrityPoints + widget.patternPoints)
            .toString();
    final DateTime now = DateTime.now();
    scoreCollection.add({'date':now.day.toString()+"/"+now.month.toString()+'/'+now.year.toString(),'score':total});
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.height * 0.06,
                vertical: MediaQuery.of(context).size.width * 0.08),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                ),
                Text(
                  'You Scored',
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(fontSize: 30),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '5 / 5 Points',
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(fontSize: 20),
                ),
                SizedBox(
                  height: 100,
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home(),
                        ),
                        (Route<dynamic> route) => false);
                  },
                  child: Card(
                    color: Colors.lightBlueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27.0),
                    ),
                    margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25),
                    child: 
                        ListTile(
                            title: Text(
                              "Back to Home Page ",
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                  ),
                ),
                //adding user data
              ],
            ),
          ),
        ],
      ),
    );
  }
}
