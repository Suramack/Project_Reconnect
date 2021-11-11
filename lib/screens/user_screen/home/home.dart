import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reconnect/screens/user_screen/components/text_style.dart';
import 'package:reconnect/screens/user_screen/home/ev_help/battery_exchange/battery_exchange.dart';
import 'package:reconnect/screens/user_screen/home/ev_help/ev_charge/ev_charge_button.dart';
import 'package:reconnect/screens/user_screen/home/ev_help/near_me/near_me.dart';
import 'package:reconnect/screens/user_screen/home/other_help/complaint.dart';
import 'package:reconnect/screens/user_screen/home/other_help/emergency.dart';
import 'package:reconnect/screens/user_screen/home/vehicle_help/mechanic.dart';
import 'package:reconnect/screens/user_screen/home/vehicle_help/workshop.dart';

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
            height: 130,
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
                    style: buttonsTileHeadingTextSyle(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextButton(
                          onPressed: () => evChargeButton(context, size),
                          child: Column(
                            children: [
                              Icon(
                                FontAwesomeIcons.route,
                                color: Colors.pink.shade300,
                              ),
                              Text(
                                'EV charge',
                                textAlign: TextAlign.center,
                                style: buttontextStyle(),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: TextButton(
                          onPressed: () => nearMe(context, size),
                          child: Column(
                            children: [
                              Icon(
                                FontAwesomeIcons.chargingStation,
                                color: Colors.lightBlueAccent.shade400,
                              ),
                              Text(
                                'near me',
                                style: buttontextStyle(),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: TextButton(
                          onPressed: () => batteryExchange(context, size),
                          child: Column(
                            children: [
                              Icon(
                                FontAwesomeIcons.carBattery,
                                color: Colors.lightGreenAccent.shade700,
                              ),
                              Text(
                                'exchange',
                                style: buttontextStyle(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
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
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Vehicle Help',
                      style: buttonsTileHeadingTextSyle(),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child: TextButton(
                            onPressed: () => mechanic(context, size),
                            child: Column(
                              children: [
                                Icon(
                                  FontAwesomeIcons.route,
                                  color: Colors.amberAccent.shade700,
                                ),
                                Text('mechanic', style: buttontextStyle())
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 100,
                          child: TextButton(
                            onPressed: () => workShop(context, size),
                            child: Column(
                              children: [
                                Icon(
                                  FontAwesomeIcons.tools,
                                  color: Colors.purpleAccent.shade700,
                                ),
                                Text(
                                  'workshop',
                                  style: buttontextStyle(),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
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
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Other help',
                      style: buttonsTileHeadingTextSyle(),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child: TextButton(
                            onPressed: () => emergencySheet(context, size),
                            child: Column(
                              children: [
                                Icon(
                                  FontAwesomeIcons.ambulance,
                                  color: Colors.redAccent.shade700,
                                ),
                                Text(
                                  'emergency',
                                  style: buttontextStyle(),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 100,
                          child: TextButton(
                            onPressed: () {
                              toast();
                            },
                            child: Column(
                              children: [
                                Icon(
                                  FontAwesomeIcons.exclamationTriangle,
                                  color: Colors.yellowAccent.shade700,
                                ),
                                Text(
                                  'complaint',
                                  style: buttontextStyle(),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
