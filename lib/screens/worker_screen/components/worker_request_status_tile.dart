import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reconnect/screens/worker_screen/components/worker_style/worker_screen_text_style.dart';

List<String> tileTitle = [
  'request status',
  'request procesing',
  'request accepted/rejected'
];
List<String> tileSubTitle = [
  'waiting for processing',
  'waiting for confirmation',
  'completed',
];
int? index;
Color isColor(int index) {
  if (index == 0) {
    return Colors.green;
  } else {
    return Colors.grey;
  }
}

Row requestStatustTile() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'request status',
        style: requesStatusHeadingStyle(),
      ),
      Container(
        alignment: Alignment.topRight,
        width: 150,
        child: Text(
          'last updated 2021:Dec:12:56PM',
          textAlign: TextAlign.end,
          maxLines: 2,
          style: requesStatusSubHeadingStyle(),
        ),
      )
    ],
  );
}

Row requestTiles(int index) {
  return Row(
    children: [
      Container(
        width: 33,
        height: 33,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100),
            boxShadow: const [
              BoxShadow(color: Colors.grey, blurRadius: 1),
            ]),
        child: Icon(
          FontAwesomeIcons.checkCircle,
          size: 30,
          color: isColor(index),
        ),
      ),
      Container(
        padding: const EdgeInsets.only(left: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tileTitle[index],
              style: requesStatusTitleStyle(),
            ),
            Text(
              tileSubTitle[index],
              style: requesStatusSubTitleStyle(),
              textAlign: TextAlign.end,
            ),
          ],
        ),
      )
    ],
  );
}
