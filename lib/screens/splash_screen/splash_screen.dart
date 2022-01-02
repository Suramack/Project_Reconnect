import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:reconnect/screens/login_screen/login_screen.dart';
import 'package:reconnect/screens/splash_screen/components.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    initializeApp();
  }

  Future<void> initializeApp() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Login()));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Image.asset(
                'assets/reconnectLogo.png',
                height: 150,
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.9,
            left: (size.width * 0.5) - 75 + 37.5,
            child: Text(
              'reconnect.',
              style: bottomTextStyle(),
            ),
          )
        ],
      ),
    );
  }
}
