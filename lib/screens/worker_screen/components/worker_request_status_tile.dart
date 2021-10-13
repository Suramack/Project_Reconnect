import 'package:flutter/material.dart';
import 'package:reconnect/screens/worker_screen/components/worker_style/worker_screen_text_style.dart';

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
        // color: Colors.amber,
        padding: const EdgeInsets.only(right: 20),
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
