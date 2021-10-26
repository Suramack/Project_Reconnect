import 'package:flutter/material.dart';
import 'package:reconnect/screens/login_screen/login_screen.dart';
import 'package:reconnect/screens/user_screen/home_screen.dart';
import 'package:reconnect/screens/worker_screen/home/worker_home_screen.dart';
import 'package:reconnect/screens/worker_screen/worker_status_screen.dart';
import 'package:reconnect/test_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String title = 'Reconnect';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFEFEFEF),
        appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xff025dbf), centerTitle: true),
      ),
      home: const UserHomeScreen(),
    );
  }
}
