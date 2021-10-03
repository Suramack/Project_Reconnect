import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

bottomsheet(context) {
  Size size = MediaQuery.of(context).size;
  return showModalBottomSheet(
      backgroundColor: Colors.white,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(13))),
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: size.height * .7,
        );
      });
}
