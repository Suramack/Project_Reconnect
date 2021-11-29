import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:reconnect/model/user_logout.dart';
import 'package:reconnect/screens/login_screen/login_screen.dart';

List<Color> iconColorList = [
  Colors.lightBlueAccent.shade400,
  Colors.greenAccent.shade400,
  Colors.redAccent.shade400,
];
List<Color> iconBackgroundColorList = [
  Colors.lightBlue.shade100,
  Colors.greenAccent.shade100,
  Colors.redAccent.shade100,
];
ListTile profileList(
        int id,
        IconData leadingIcon,
        String title,
        IconData trailingIcon,
        String subTitle,
        FirebaseAuth auth,
        BuildContext context) =>
    ListTile(
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            color: iconBackgroundColorList[id],
            borderRadius: BorderRadius.circular(10)),
        child: Icon(
          leadingIcon,
          color: iconColorList[id],
        ),
      ),
      onTap: () async {
        if (id == 2) {
          await userLogOut(auth)
              ? Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const Login()))
              : print('error in logout');
        }
      },
      title: Text(
        title,
        style: TextStyle(
          color: Colors.grey.shade700,
          fontSize: 20,
          fontFamily: 'Barlow',
        ),
      ),
      trailing: Icon(
        trailingIcon,
        color: Colors.grey.shade300,
        size: 25,
      ),
      subtitle: Text(subTitle),
    );
