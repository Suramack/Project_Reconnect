import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reconnect/provider/sample.dart';
import 'package:reconnect/provider/service.dart';
import 'package:reconnect/screens/login_screen/login_screen.dart';
import 'package:reconnect/screens/registration_screen/user_registration_design/components/user_registration_design_form.dart';
import 'package:reconnect/screens/splash_screen/splash_screen.dart';
import 'package:reconnect/screens/user_screen/home_screen.dart';
import 'package:reconnect/screens/worker_screen/home/worker_home_screen.dart';
import 'package:reconnect/screens/worker_screen/worker_status_screen.dart';
import 'package:reconnect/test_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String title = 'Reconnect';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => TestService())],
      child: MaterialApp(
        title: title,
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFFEFEFEF),
          appBarTheme: const AppBarTheme(
              backgroundColor: Color(0xff025dbf), centerTitle: true),
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
