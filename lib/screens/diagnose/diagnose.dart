import 'package:Demen_Buster/screens/diagnose/personalquiz/personalquiz.dart';
import 'package:flutter/material.dart';
import 'package:Demen_Buster/screens/diagnose/game_choose.dart';
import 'package:Demen_Buster/screens/diagnose/games/simon.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:Demen_Buster/screens/home/home.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Diagnose extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              MediaQuery.of(context).size.height * 0.045,
              MediaQuery.of(context).size.height * 0.1,
              MediaQuery.of(context).size.height * 0.045,
              MediaQuery.of(context).size.height * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Take a pick!",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(fontSize: 39, color: Colors.blueGrey[600]),
              ),
              Text(
                "Let's play some games to put your memory to test. Go ahead and play the games!",
                style: Theme.of(context)
                    .textTheme
                    .title
                    .copyWith(color: Colors.black54),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.044,
              ),
              Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GameChoose(),
                        ),
                      );
                    },
                    child: Card(
                      color: Colors.lightBlueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27.0),
                      ),
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 25.0),
                      child: ListTile(
                        title: Text(
                          "Play mini games",
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SimonGame(),
                        ),
                      );
                    },
                    child: Card(
                      color: Colors.lightBlueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27.0),
                      ),
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 25.0),
                      child: ListTile(
                        title: Text(
                          "Take the full test",
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PersonalQuiz(),
                        ),
                      );
                    },
                    child: Card(
                      color: Colors.lightBlueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27.0),
                      ),
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 25.0),
                      child: ListTile(
                        title: Text(
                          "Make Personalized Quizzes",
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
              
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/gamer.gif'),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.037,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                  );
                },
                child: Icon(
                  Icons.logout,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
