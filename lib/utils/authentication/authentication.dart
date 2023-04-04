import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

String? uid;
String? userEmail;

Future<bool?> isAuthenticated() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getBool("auth");
}

Future<User?> registerWithEmailPassword(String email, String password) async {
  await Firebase.initializeApp();
  User? user;

  try {
    UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    user = userCredential.user;
    if (user != null) {
      uid = user.uid;
      userEmail = user.email;
      print(uid);
      var fbUser = FirebaseAuth.instance.currentUser;
      var fbInstance = FirebaseFirestore.instance;
      fbInstance.doc("users").set({
        "name": userEmail,
        "status": "default",
      });
    }
  } on FirebaseAuthException catch (error) {
    if (error.code == "weak-passed") {
      print('The password provided is too weak.');
    } else if (error.code == "email-already-in-use") {
      print('An account already exists for that email.');
    }
  } catch (error) {
    print(error);
  }
  return user;
}

Future<User?> signInWithEmailPassword(String email, String password) async {
  await Firebase.initializeApp();
  User? user;

  try {
    UserCredential userCredential = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    if (user != null) {
      uid = user.uid;
      userEmail = user.email;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setBool("auth", true);
    }
  } on FirebaseAuthException catch (error) {
    if (error.code == "weak-passed") {
      print('The password provided is too weak.');
    } else if (error.code == "email-already-in-use") {
      print('An account already exists for that email.');
    }
  } catch (error) {
    print(error);
  }
  return user;
}
