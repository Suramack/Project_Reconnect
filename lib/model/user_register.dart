import 'package:firebase_auth/firebase_auth.dart';

Future<bool> userRegister(
    String email, String password, FirebaseAuth auth) async {
  bool isError = false;
  try {
    await auth.createUserWithEmailAndPassword(email: email, password: password);
  } catch (e) {
    isError = true;
  }
  return isError;
}
