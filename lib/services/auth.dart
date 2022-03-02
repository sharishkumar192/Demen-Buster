import 'package:Demen_Buster/model/userModel.dart';
import 'package:Demen_Buster/services/database.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  DateTime now = DateTime.now();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user object based on firebase return
  UserModel _userfromfirebase(User user) {
    return user != null ? UserModel(uid: user.uid) : null;
  }

  //stream to listern
  Stream<UserModel> get user {
    return _auth.authStateChanges().map(_userfromfirebase);
  }

  //sign-in anonomus
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user;
      return _userfromfirebase(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sign in with email and pass
  Future signinEmailPass(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      return _userfromfirebase(user);
    } catch (e) {
      print(e.toString);
      return null;
    }
  }

  //register with email and password
  Future registerEmailPass(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;

      //create new document for the user
      await DatabaseService(uid: user.uid).updateUserData("DATE", "SCORE");
      return _userfromfirebase(user);
    } catch (e) {
      print(e.toString);
      return null;
    }
  }

  //sign out
  Future signOut() async {
    try {
      return _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
