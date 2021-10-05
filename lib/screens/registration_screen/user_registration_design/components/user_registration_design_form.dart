import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserRegistration extends StatefulWidget {
  const UserRegistration({Key? key}) : super(key: key);

  @override
  _UserRegistrationState createState() => _UserRegistrationState();
}

class _UserRegistrationState extends State<UserRegistration> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.all(10),
      width: 350,
      height: MediaQuery.of(context).size.height * 0.41,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(color: Colors.grey, blurRadius: 2),
        ],
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              labelStyle: TextStyle(
                color: Colors.grey.shade500,
                fontFamily: 'Barlow',
              ),
              label: const Text('Name'),
              icon: const Icon(FontAwesomeIcons.user, color: Color(0xff453e3d)),
              border: InputBorder.none,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 3, bottom: 3),
            width: 300,
            height: 3,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          TextField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              labelStyle: TextStyle(
                color: Colors.grey.shade500,
                fontFamily: 'Barlow',
              ),
              label: const Text('Email'),
              icon: const Icon(FontAwesomeIcons.envelope,
                  color: Color(0xff453e3d)),
              border: InputBorder.none,
            ),
          ),
          Container(
            width: 300,
            height: 3,
            margin: const EdgeInsets.only(top: 3, bottom: 3),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          TextField(
            obscureText: true,
            cursorColor: Colors.black,
            decoration: InputDecoration(
              labelStyle: TextStyle(
                color: Colors.grey.shade500,
                fontFamily: 'Barlow',
              ),
              label: const Text('password'),
              icon: const Icon(FontAwesomeIcons.lock, color: Color(0xff453e3d)),
              border: InputBorder.none,
            ),
          ),
          Container(
            width: 300,
            height: 3,
            margin: const EdgeInsets.only(top: 3, bottom: 3),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          TextField(
            obscureText: true,
            cursorColor: Colors.black,
            decoration: InputDecoration(
              labelStyle: TextStyle(
                color: Colors.grey.shade500,
                fontFamily: 'Barlow',
              ),
              label: const Text('Confirmation'),
              icon: const Icon(FontAwesomeIcons.lock, color: Color(0xff453e3d)),
              border: InputBorder.none,
            ),
          ),
          Container(
            width: 300,
            height: 3,
            margin: const EdgeInsets.only(top: 3, bottom: 7),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.green)),
            onPressed: () {},
            child: const Text(
              'SIGN UP',
              style: TextStyle(
                fontFamily: 'DMMono',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
