import 'package:Demen_Buster/screens/carecentres/carecentres.dart';
import 'package:Demen_Buster/screens/carecentres/neuroDetails.dart';
import 'package:Demen_Buster/screens/carecentres/neurologist.dart';
import 'package:Demen_Buster/screens/progress.dart';
import 'package:Demen_Buster/screens/wrapper.dart';
import 'package:Demen_Buster/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:Demen_Buster/model/userModel.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/carecentres/details.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserModel>.value(
      value: AuthServices().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => Wrapper(),
          '/carecentre': (context) => Carecentres(),
          '/details': (context) => Details(),
          '/progress':(context)=> Progress(),
          '/neurologist':(context)=> Neurologist(),
          '/neurodetails':(context)=> NeuroDetails(),
        },
      ),
    );
  }
}
