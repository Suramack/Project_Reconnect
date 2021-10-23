import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reconnect/screens/worker_screen/components/worker_style/worker_screen_text_style.dart';

Future notificationChange(BuildContext context) {
  bool isnotificationChanged = true;

  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (BuildContext context) => StatefulBuilder(
      builder: (context, setState) {
        void notificationchanged(bool value) {
          setState(() {
            isnotificationChanged = !isnotificationChanged;
          });
        }

        return Container(
          width: 100,
          height: 500,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      blurRadius: 10,
                    )
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Help notification',
                      style: notificationTextStyle(),
                    ),
                    Switch(
                        activeColor: Colors.green,
                        value: isnotificationChanged,
                        onChanged: (value) => notificationchanged(value))
                  ],
                ),
              ),
            ],
          ),
        );
      },
    ),
  );
}
