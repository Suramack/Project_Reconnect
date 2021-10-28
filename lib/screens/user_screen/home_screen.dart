import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reconnect/screens/user_screen/components/text_style.dart';
import 'package:reconnect/screens/user_screen/home.dart';

class UserHomeScreen extends StatefulWidget {
  const UserHomeScreen({Key? key}) : super(key: key);

  @override
  _UserHomeScreenState createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {
  int bottomNaivationIndex = 0;
  List<Widget> home = [
    UserHome(),
    Text(''),
    Text(''),
  ];

  void setBottomNavigationIndex(int value) {
    setState(() {
      bottomNaivationIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        onTap: (value) => setBottomNavigationIndex(value),
      ),
    );
  }
}
