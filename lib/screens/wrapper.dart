import 'package:Demen_Buster/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'authenticate/authenticate.dart';
import 'package:Demen_Buster/model/userModel.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

//chooses whether to go to home or authenticate

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    final _user = Provider.of<UserModel>(context);
    if (_user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
