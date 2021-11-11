import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reconnect/screens/user_screen/components/text_style.dart';

Future emergencySheet(BuildContext context, Size size) => showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        height: size.height * 0.4,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.green),
                  elevation: MaterialStateProperty.all(0),
                  minimumSize: MaterialStateProperty.all(
                    const Size(120, 120),
                  ),
                  maximumSize: MaterialStateProperty.all(
                    const Size(120, 120),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                  Fluttertoast.showToast(
                    msg: 'live location sending to emergency department',
                    backgroundColor: Colors.grey.shade700,
                    gravity: ToastGravity.BOTTOM,
                    fontSize: 18,
                    textColor: Colors.white,
                    toastLength: Toast.LENGTH_LONG,
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      FontAwesomeIcons.locationArrow,
                      size: 35,
                    ),
                    Text(
                      'locate me',
                      style: locateMeTextStyle(),
                    )
                  ],
                ),
              ),
              const VerticalDivider(
                endIndent: 100,
                indent: 100,
              ),
              Text(
                'or',
                style: orStyle(),
              ),
              const VerticalDivider(
                endIndent: 100,
                indent: 100,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xff343aeb)),
                  minimumSize: MaterialStateProperty.all(
                    const Size(120, 120),
                  ),
                  maximumSize: MaterialStateProperty.all(
                    const Size(120, 120),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      FontAwesomeIcons.phoneAlt,
                      size: 35,
                    ),
                    Text(
                      '112',
                      style: callTextStyle(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
