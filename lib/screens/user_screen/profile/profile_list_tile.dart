import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
ListTile profileList(int id, IconData leadingIcon, String title,
        IconData trailingIcon, String subTitle) =>
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
      onTap: () {
        Fluttertoast.showToast(
          msg: 'developing stage of id $id',
          toastLength: Toast.LENGTH_SHORT,
          backgroundColor: Colors.grey.shade700,
        );
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
