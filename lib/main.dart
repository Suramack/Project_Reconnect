import 'package:flutter/material.dart';
import 'package:reconnect/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reconnect',
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFFEFEFEF),
          appBarTheme: const AppBarTheme(
              backgroundColor: Color(0xff025dbf), centerTitle: true)),
      home: const Login(),
    );
  }
}
