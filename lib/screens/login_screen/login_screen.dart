import 'package:flutter/material.dart';
import 'package:reconnect/screens/login_screen/components/custom_toggle_button.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
            child: Center(
          child: Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.4),
            child: CustomTabBar(),
          ),
        )),
      ),
    );
  }
}
