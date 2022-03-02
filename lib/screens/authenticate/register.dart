import 'package:flutter/material.dart';
import 'package:Demen_Buster/services/auth.dart';
import 'package:Demen_Buster/constants.dart';
import 'package:Demen_Buster/loading.dart';
import 'package:Demen_Buster/screens/authenticate/components/rounded_button.dart';
import 'package:Demen_Buster/screens/authenticate/components/dont_have_account.dart';
import 'package:Demen_Buster/screens/authenticate/sign_in.dart';

class Register extends StatefulWidget {
  final Function toggle;
  Register({this.toggle});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String email = "";
  String passWord = "";
  String error = "";
  bool loading = false;

  final AuthServices _auth = AuthServices();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return loading
        ? Loading()
        : Scaffold(
            body: Container(
              height: size.height,
              width: double.infinity,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Positioned(
                    height: 870,
                    child: Image.asset(
                      "assets/images/bg1.png",
                      // width: size.width * 0.3,
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: size.height * 0.03),
                        Image.asset(
                          "assets/images/logo.png",
                        ),
                        SizedBox(height: size.height * 0.03),
                        Form(
                            key: _formKey,
                            child: Column(children: [
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                cursorColor: kPrimaryColor,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  icon: Icon(
                                    Icons.person,
                                    color: Colors.white,
                                  ),
                                  hintText: "Email ID",
                                  contentPadding: new EdgeInsets.symmetric(
                                      vertical: 18.0, horizontal: 20.0),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(30.0)),
                                ),
                                validator: (val) =>
                                    val.isEmpty ? "Enter an Email" : null,
                                onChanged: (val) {
                                  setState(() => email = val);
                                },
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  icon: Icon(
                                    Icons.lock,
                                    color: Colors.white,
                                  ),
                                  hintText: "Password",
                                  contentPadding: new EdgeInsets.symmetric(
                                      vertical: 18.0, horizontal: 20.0),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(30.0)),
                                ),
                                validator: (val) => val.length < 6
                                    ? "Enter a Password with minimum 6 Characters"
                                    : null,
                                obscureText: true,
                                onChanged: (val) {
                                  setState(() => passWord = val);
                                },
                              ),
                            ])),
                        SizedBox(
                          height: 20,
                        ),

                        RoundedButton(
                          text: "REGISTER",
                          press: () async {
                            if (_formKey.currentState.validate()) {
                              setState(() => loading = true);
                              dynamic result = await _auth.registerEmailPass(
                                  email, passWord);
                              if (result == null) {
                                setState(
                                  () {
                                    error =
                                        "Please Check the Sign Up credentials and try again ";
                                    loading = false;
                                  },
                                );
                              } else {
                                setState(
                                  () {
                                    loading = false;
                                  },
                                );
                                Navigator.pushNamed(context, '/');
                              }
                            }
                          },
                        ),
                        SizedBox(height: size.height * 0.03),
                        DonthaveaccountCheck(
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return SignIn();
                                },
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20),
                        Text(
                          error,
                          style: TextStyle(color: Colors.red, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
