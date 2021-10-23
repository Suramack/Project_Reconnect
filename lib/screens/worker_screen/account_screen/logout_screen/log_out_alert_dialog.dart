// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:reconnect/screens/worker_screen/components/worker_style/worker_screen_text_style.dart';

Future logOutDialog(BuildContext context) async {
  return await showDialog(
      context: context,
      builder: (BuildContext contex) {
        return StatefulBuilder(builder: (BuildContext context, setState) {
          return AlertDialog(
            titlePadding: EdgeInsets.only(left: 100, top: 10),
            title: Text(
              'confirm',
              style: confirmTextStyle(),
            ),
            actionsAlignment: MainAxisAlignment.center,
            actions: [
              Container(
                width: 120,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green)),
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      'cancel',
                      style: logoutCancelButtonTextStyle(),
                    )),
              ),
              Container(
                width: 120,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: OutlinedButton(
                    onPressed: () => null,
                    child: Text(
                      'logout',
                      style: logoutConfirmButtonTextStyle(),
                    )),
              ),
            ],
            content: Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Text(
                'connect with reconnect',
                style: confirmWarningTextStyle(),
              ),
            ),
          );
        });
      });
}
