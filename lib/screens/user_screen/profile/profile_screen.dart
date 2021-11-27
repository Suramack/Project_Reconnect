import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reconnect/screens/user_screen/insurance/components/text_style.dart';
import 'package:reconnect/screens/user_screen/profile/profile_list_tile.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 300,
          child: Stack(
            children: [
              Positioned(
                top: 20,
                child: Image.asset('assets/workerprofileback.png'),
              ),
              Positioned(
                top: 80,
                left: size.width * 0.5 - 70,
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(
                        'https://www.adobe.com/express/create/profile-picture/media_141efea30cca217e8cb7fb3abb8ed9d663c29d550.jpeg',
                        height: 140,
                      ),
                    ),
                    Text(
                      'Suramack',
                      style: userNameStyle(),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: size.height * 0.45,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 0.5,
                    color: Colors.grey.shade400,
                    offset: const Offset(0, -1),
                  ),
                ]),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  profileList(
                    0,
                    FontAwesomeIcons.userAlt,
                    'Profile',
                    FontAwesomeIcons.chevronRight,
                    'edit profile',
                  ),
                  const Divider(),
                  profileList(
                    1,
                    FontAwesomeIcons.bell,
                    'Notification',
                    FontAwesomeIcons.chevronRight,
                    'off/on',
                  ),
                  const Divider(),
                  profileList(
                    2,
                    FontAwesomeIcons.signOutAlt,
                    'Logout',
                    FontAwesomeIcons.chevronRight,
                    'see you soon',
                  ),
                  const Divider()
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
