import 'package:firebase_auth/firebase_auth.dart';

Future<bool> userLogOut(FirebaseAuth auth) async {
  bool isLogout = true;
  try {
    await auth.signOut();
  } catch (e) {
    isLogout = false;
  }
  return isLogout;
}
