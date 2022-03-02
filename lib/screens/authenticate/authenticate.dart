import 'package:Demen_Buster/screens/authenticate/register.dart';
import 'package:Demen_Buster/screens/authenticate/sign_in.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;
  void toggleSignin() {
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn == true) {
      return Container(
        child: SignIn(toggle: toggleSignin),
      );
    } else {
      return Container(
        child: Register(toggle: toggleSignin),
      );
    }
  }
}
