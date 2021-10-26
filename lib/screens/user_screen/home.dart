import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reconnect/screens/user_screen/components/text_style.dart';

class UserHome extends StatefulWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  _UserHomeState createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          //EV help
          Container(
            width: size.width,
            height: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Colors.grey.shade400,
                width: 0.5,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'EV help',
                    style: evHelpTextStyle(),
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () => null,
                        child: Column(
                          children: [
                            Icon(FontAwesomeIcons.chargingStation),
                            Text('near me'),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () => null,
                        child: Column(
                          children: [
                            Icon(FontAwesomeIcons.carBattery),
                            Text('battery exchange'),
                          ],
                        ),
                      )
                    ],
                  ),
                  OutlinedButton(
                    onPressed: () => null,
                    child: Text(
                      "I don't know about the problem",
                    ),
                  )
                ],
              ),
            ),
          ),
          //vehicle help
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Container(
              width: size.width,
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.grey.shade400,
                  width: 0.5,
                ),
              ),
            ),
          ),
          //other help
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Container(
              width: size.width,
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.grey.shade400,
                  width: 0.5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
