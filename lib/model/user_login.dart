import 'package:firebase_auth/firebase_auth.dart';

Future<bool> userLogin(String email, String password, FirebaseAuth auth) async {
  auth.signInWithEmailAndPassword(email: email, password: password);
  return true;
}
