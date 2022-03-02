import 'package:Demen_Buster/screens/diagnose/personalquiz/create_quiz.dart';
import 'package:Demen_Buster/screens/diagnose/personalquiz/everyday/everyday.dart';
import 'package:Demen_Buster/screens/diagnose/personalquiz/family/family.dart';
import 'package:Demen_Buster/screens/diagnose/personalquiz/widget.dart';
import 'package:flutter/material.dart';


import 'package:Demen_Buster/screens/diagnose/personalquiz/quiz_play.dart';


class PersonalQuiz extends StatefulWidget {
  @override
  _PersonalQuizState createState() => _PersonalQuizState();
}

class _PersonalQuizState extends State<PersonalQuiz> {
  Stream quizStream;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: AppLogo(),
        brightness: Brightness.light,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        //brightness: Brightness.li,
      ),
      body: QuizTile(),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CreateQuiz()));
        },
      ),
    );
  }
} 

class QuizTile extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      bottom: false,
      child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
    
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => Family()
            ));
          },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        height: 150,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(
            children: [
              Image.network(
                "https://images.unsplash.com/photo-1549227082-0ea18ce30397?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
              Container(
                color: Colors.black26,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Family Members",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 4,),
                      Text(
                        "Identify close family members",
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              )
            ],
            
          ),

        ),
        
      ),
    ),
    SizedBox(
                      height: 20,
                    ),
    GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => Everyday(),
            ));
          },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        height: 150,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(
            children: [
              Image.network(
                "https://images.unsplash.com/photo-1524678714210-9917a6c619c2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1049&q=80",
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
              Container(
                color: Colors.black26,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Everyday Things",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 4,),
                      Text(
                        "Identify the objects around you",
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              )
            ],
            
          ),

        ),
        
      ),
    ),

    ]
    )
    )
    );
                

  }
}
