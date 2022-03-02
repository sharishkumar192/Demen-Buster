import 'package:Demen_Buster/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:Demen_Buster/constants.dart';
import 'package:Demen_Buster/screens/info/content/about.dart';
import 'package:Demen_Buster/screens/info/content/symptoms.dart';
import 'package:Demen_Buster/screens/info/content/memory.dart';
import '../../expansion_card.dart';


class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
        body: SingleChildScrollView(
          child: Column (
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[

                  SizedBox(
                        height: 20,
                      ),

                  FlatButton.icon(
                          icon: Icon(Icons.arrow_back_ios),
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                        label: Text("Back"),
                      ),
                    
                    FlatButton.icon(
                        icon: Icon(Icons.apps_sharp),
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                        label: Text("About Alzheimer's"),
                      ),

                    Image.asset(
                          "assets/images/know.png",
                        ),

                        SizedBox(
                          height: 20,
                        ),

///////////////////////////////////////////////////////////////////////////////////////////////

                ExpansionCard(
                      gif: 'assets/animations/about.gif',
                      title: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "What is Alzheimer's?",
                              style: TextStyle(
                                fontFamily: 'BalooBhai',
                                fontSize: 30,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "A sneak peek",
                              style: TextStyle(
                                  fontFamily: 'BalooBhai', fontSize: 20, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Text("Alzheimer's disease is a progressive disorder that causes brain cells...",
                          style: TextStyle(
                              fontFamily: 'BalooBhai',
                              fontSize: 20,
                              color: Colors.black)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => About(),
                        ),
                      );
                    },
                    // The custom button
                    child: Container(
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Theme.of(context).buttonColor,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Text('Read more...'),
                    ),
                  )
              ],
            ),
            SizedBox(
                      height: 20,
                    ),
//////////////////////////////////////////////////////////////////////////////////////

                ExpansionCard(
                      gif: 'assets/animations/symptoms.gif',
                      title: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Symptoms",
                              style: TextStyle(
                                fontFamily: 'BalooBhai',
                                fontSize: 30,
                                color: Colors.black,
                              ),
                            ),
                            // Text(
                            //   "Early Signs",
                            //   style: TextStyle(
                            //       fontFamily: 'BalooBhai', fontSize: 20, color: Colors.black),
                            // ),
                          ],
                        ),
                      ),
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Text("Memory loss is the key symptom of Alzheimer's disease. An early sign of the disease is usually...",
                          style: TextStyle(
                              fontFamily: 'BalooBhai',
                              fontSize: 20,
                              color: Colors.black)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Symptoms(),
                        ),
                      );
                    },
                    // The custom button
                    child: Container(
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Theme.of(context).buttonColor,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Text('Read more...'),
                    ),
                  )
              ],
            ),
            SizedBox(
                      height: 20,
                    ),
//////////////////////////////////////////////////////////////////////////////////////           

                  Image.asset(
                          "assets/images/old1.png",
                        ),

                        SizedBox(
                          height: 20,
                        ),

//////////////////////////////////////////////////////////////////////////////////////

                ExpansionCard(
                      gif: 'assets/animations/memory.gif',
                      title: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Know about Memory",
                              style: TextStyle(
                                fontFamily: 'BalooBhai',
                                fontSize: 30,
                                color: Colors.black,
                              ),
                            ),
                            // Text(
                            //   "Early Signs",
                            //   style: TextStyle(
                            //       fontFamily: 'BalooBhai', fontSize: 20, color: Colors.black),
                            // ),
                          ],
                        ),
                      ),
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Text("Everyone has occasional memory lapses. It's normal to lose track of where you put your keys...",
                          style: TextStyle(
                              fontFamily: 'BalooBhai',
                              fontSize: 20,
                              color: Colors.black)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Memory(),
                        ),
                      );
                    },
                    // The custom button
                    child: Container(
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Theme.of(context).buttonColor,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Text('Read more...'),
                    ),
                  )
              ],
            ),
            SizedBox(
                      height: 20,
                    ),
//////////////////////////////////////////////////////////////////////////////////////  



        ])));}}