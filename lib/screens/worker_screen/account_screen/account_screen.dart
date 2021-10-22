import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reconnect/screens/worker_screen/account_screen/payment_screen/payment_screen.dart';
import 'package:reconnect/screens/worker_screen/account_screen/profileBotttomSheets/edit_profile_screen.dart';
import 'package:reconnect/screens/worker_screen/components/worker_style/worker_screen_text_style.dart';
// import 'package:reconnect/screens/worker_screen/home/profileBotttomSheets/profile_bottom_sheet.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    void profileTileType(int id) {
      switch (id) {
        case 1:
          profileBottomSheet(context, size);
          break;
        case 2:
          payment(context, size);
          break;
        default:
      }
    }

    Widget profileTile(int id, Color color, Icon icon, String title,
        String subTitle, IconData arrow) {
      return ListTile(
        onTap: () => profileTileType(id),
        title: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(8),
              ),
              child: icon,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: SizedBox(
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: workerProfileTileTextStyle(),
                    ),
                    Text(
                      subTitle,
                      style: workerProfileTileSubTitleStyle(),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Icon(
                arrow,
                color: Colors.grey.shade400,
                size: 18,
              ),
            ),
          ],
        ),
      );
    }

    return Column(
      children: [
        Container(
          width: size.width,
          height: size.height * 0.3,
          child: Stack(
            children: [
              Positioned(
                top: 50,
                right: 0,
                child: AnimatedOpacity(
                    duration: const Duration(),
                    opacity: 0.4,
                    child: Image.asset('assets/workerprofileback.png')),
              ),
              Positioned(
                left: (size.width - 150) * 0.5,
                top: 50,
                child: Column(
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: ClipOval(
                          child: Image.network(
                            'https://www.adobe.com/express/create/profile-picture/media_141efea30cca217e8cb7fb3abb8ed9d663c29d550.jpeg',
                            loadingBuilder: (context, child, progress) {
                              return progress == null
                                  ? child
                                  : const LinearProgressIndicator(
                                      color: Colors.green,
                                      backgroundColor: Colors.lightBlue,
                                    );
                            },
                            width: 140,
                            height: 140,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Suramack',
                      style: workerNameStyle(),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10),
          child: Container(
            width: size.width,
            height: size.height * 0.5,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 15,
                  ),
                ]),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 70),
              child: Column(
                children: [
                  profileTile(
                      1,
                      Colors.lightBlue.shade100,
                      Icon(FontAwesomeIcons.solidUserCircle,
                          color: Colors.lightBlue.shade700),
                      'Profile',
                      'edit profile',
                      FontAwesomeIcons.chevronRight),
                  const Divider(),
                  profileTile(
                      2,
                      Colors.lightGreen.shade100,
                      const Icon(
                        FontAwesomeIcons.creditCard,
                        color: Colors.green,
                      ),
                      'Payment',
                      'UPI or card',
                      FontAwesomeIcons.chevronRight),
                  const Divider(),
                  profileTile(
                      3,
                      Colors.red.shade100,
                      Icon(
                        FontAwesomeIcons.solidBell,
                        color: Colors.red.shade400,
                      ),
                      'Notification',
                      'manage spacific nottification',
                      FontAwesomeIcons.chevronRight),
                  const Divider(),
                  profileTile(
                      4,
                      Colors.purple.shade100,
                      Icon(
                        FontAwesomeIcons.signOutAlt,
                        color: Colors.purpleAccent.shade400,
                      ),
                      'Logout',
                      'manage spacific nottification',
                      FontAwesomeIcons.chevronRight),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
