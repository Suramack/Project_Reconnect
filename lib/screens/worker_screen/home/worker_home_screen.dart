import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reconnect/screens/worker_screen/home/worker_home.dart';
import 'package:reconnect/screens/worker_screen/components/worker_request_status_tile.dart';
import 'package:reconnect/screens/worker_screen/components/worker_style/worker_screen_text_style.dart';
import 'package:reconnect/screens/worker_screen/home/worker_dashboard_screen.dart';

class WorkerHomeScreen extends StatefulWidget {
  const WorkerHomeScreen({Key? key}) : super(key: key);

  @override
  _WorkerHomeScreenState createState() => _WorkerHomeScreenState();
}

class _WorkerHomeScreenState extends State<WorkerHomeScreen> {
  int navigationIndex = 0;
  List<Widget> home = [
    const HomeWidget(),
    const DashBoard(),
    Text('User Profile'),
  ];
  void setNavigation(int index) {
    setState(() {
      navigationIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        width: 200,
        height: 400,
        color: Colors.green,
        child: Column(
          children: [],
        ),
      ),
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.grey,
        ),
        title: Text(
          'reconnect.',
          style: appBarTitleStyle(),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(children: [
        home[navigationIndex],
      ]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationIndex,
        onTap: setNavigation,
        backgroundColor: Colors.white,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.home),
            label: '',
            activeIcon: Icon(FontAwesomeIcons.houseUser),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.poll),
            label: '',
            activeIcon: Icon(
              FontAwesomeIcons.pollH,
            ),
          ),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.user),
              label: '',
              activeIcon: Icon(
                FontAwesomeIcons.userAlt,
              )),
        ],
      ),
    );
  }
}
