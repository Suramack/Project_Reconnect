import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/utils.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reconnect/screens/user_screen/components/text_style.dart';
import 'package:reconnect/screens/user_screen/home/home.dart';
import 'package:reconnect/screens/user_screen/insurance/home/insurance_home.dart';
import 'package:reconnect/screens/user_screen/profile/profile_screen.dart';

class UserHomeScreen extends StatefulWidget {
  const UserHomeScreen({Key? key}) : super(key: key);

  @override
  _UserHomeScreenState createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {
  int bottomNaivationIndex = 0;
  List<Widget> home = [
    const UserHome(),
    const Insurance(),
    const UserProfileScreen(),
  ];

  void setBottomNavigationScreen(int value) {
    setState(() {
      bottomNaivationIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'reconnect.',
          style: appBarTitleStyle(),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: home[bottomNaivationIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,
        currentIndex: bottomNaivationIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.home), label: ''),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.userShield),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user),
            label: '',
          ),
        ],
        onTap: (value) {
          setBottomNavigationScreen(value);
        },
      ),
    );
  }
}
