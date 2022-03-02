import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:Demen_Buster/screens/diagnose/diagnose.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class Result extends StatefulWidget {
  final int simonLevel;
  final int celebrityPoints;
  final int patternPoints;
  final int total;
  Result({
    this.simonLevel = 0,
    this.celebrityPoints = 0,
    this.patternPoints = 0,
    this.total = 100,
  });

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  final CollectionReference scoreCollection =
      FirebaseFirestore.instance.collection("scores");
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String getUID() {
    final User user = _auth.currentUser;
    return user.uid;
  }

  @override
  Widget build(BuildContext context) {
    final String total =
        (widget.simonLevel + widget.celebrityPoints + widget.patternPoints)
            .toString();
    final DateTime now = DateTime.now();
    scoreCollection.doc(getUID()).collection("nestedScores").add({
      'date': now.day.toString() +
          "/" +
          now.month.toString() +
          '/' +
          now.year.toString(),
      'score': total
    });
    print(now.day.toString() +
        "/" +
        now.month.toString() +
        '/' +
        now.year.toString());
    print(total);
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
                  'Simon Points',
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(fontSize: 30),
                ),
                (widget.simonLevel >= 6)
                    ? Text(
                        widget.simonLevel.toString(),
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            .copyWith(color: Colors.green, fontSize: 25),
                      )
                    : Text(
                        widget.simonLevel.toString(),
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            .copyWith(color: Colors.red, fontSize: 25),
                      ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Text(
                  'Celebrity Points',
                  textAlign: TextAlign.left,
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(fontSize: 30),
                ),
                (widget.celebrityPoints > 4)
                    ? Text(
                        widget.celebrityPoints.toString(),
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            .copyWith(color: Colors.green, fontSize: 25),
                      )
                    : Text(
                        widget.celebrityPoints.toString(),
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            .copyWith(color: Colors.red, fontSize: 25),
                      ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Text(
                  'Riddle Points',
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(fontSize: 30),
                ),
                (widget.patternPoints > 2)
                    ? Text(
                        widget.patternPoints.toString(),
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            .copyWith(color: Colors.green, fontSize: 25),
                      )
                    : Text(
                        widget.patternPoints.toString(),
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            .copyWith(color: Colors.red, fontSize: 25),
                      ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                ),
                (widget.simonLevel +
                            widget.patternPoints +
                            widget.celebrityPoints >=
                        13)
                    ? Text(
                        "Rest assured, you don't have Alzheimer's!",
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            .copyWith(fontSize: 33, color: Colors.green),
                      )
                    : Column(
                        children: [
                          Text(
                            "Unfortunately, you might have early onset Alzheimer's and you need to see a doctor point blank",
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(fontSize: 25, color: Colors.red[300]),
                          ),
                        ],
                      ),

                GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Diagnose(),
                        ),
                        (Route<dynamic> route) => false);
                  },
                  child: Card(
                    color: Colors.lightBlueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27.0),
                    ),
                    margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25),
                    child: widget.simonLevel +
                                widget.patternPoints +
                                widget.celebrityPoints <
                            13
                        ? FlatButton.icon(
                            icon: Icon(Icons.local_hospital),
                            label: Text("Hospitals"),
                            onPressed: (() {
                              Navigator.pushNamed(context, '/carecentre');
                            }),
                          )
                        : ListTile(
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
