import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:reconnect/methods/switch_method.dart';
// import 'package:reconnect/methods/default_variables.dart';

class CustomToggleButton extends StatefulWidget {
  const CustomToggleButton({Key? key}) : super(key: key);

  @override
  _CustomToggleButtonState createState() => _CustomToggleButtonState();
}

class _CustomToggleButtonState extends State<CustomToggleButton> {
  bool existingUser = true;

  final List<bool> _toggleButtonSelected = <bool>[
    true,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              width: 305,
              height: 65,
              decoration: BoxDecoration(
                color: const Color(0xff9f8987),
                borderRadius: BorderRadius.circular(100),
              ),
              //Toggle button for User Login
              child: ToggleButtons(
                children: [
                  //Toggle button 1
                  Container(
                    margin: const EdgeInsets.only(left: 3),
                    width: 150,
                    height: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: existingUser ? Colors.white : Colors.transparent,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Text(
                      'Existing',
                      style: TextStyle(
                          color: existingUser ? Colors.black : Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  //Toggle button 2
                  Container(
                    width: 150,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: existingUser ? Colors.transparent : Colors.white,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'New',
                      style: TextStyle(
                        color: existingUser ? Colors.white : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
                onPressed: (int index) {
                  setState(
                    () {
                      existingUser = !existingUser;
                    },
                  );
                },
                isSelected: _toggleButtonSelected,
                renderBorder: false,
                splashColor: Colors.transparent,
                borderRadius: BorderRadius.circular(100),
                selectedColor: Colors.transparent,
                fillColor: Colors.transparent,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //LogIn Fields
            existingUser
                ? getExistingUserDetailsDesign()
                : getNewUserDetailsDesign(),
          ],
        ),
      ],
    );
  }

//Existing user details design

  Widget getExistingUserDetailsDesign() {
    return Container(
      width: 305,
      height: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 305,
              height: 152,
              child: Column(
                children: [
                  const Spacer(),
                  const TextField(
                    decoration: InputDecoration(
                        hintText: 'Email Address',
                        icon: Icon(
                          FontAwesomeIcons.envelope,
                          color: Color(0xff453e3d),
                        ),
                        border: InputBorder.none),
                  ),
                  const Spacer(),
                  Container(
                    width: 300,
                    height: 3,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  const Spacer(),
                  const TextField(
                    decoration: InputDecoration(
                        hintText: 'Password',
                        icon: Icon(
                          FontAwesomeIcons.lock,
                          color: Color(0xff453e3d),
                        ),
                        border: InputBorder.none),
                  ),
                  const Spacer(),
                ],
              ),
            ),
            OutlinedButton(
              style: ButtonStyle(
                alignment: Alignment.bottomCenter,
                shadowColor: MaterialStateProperty.all<Color>(Colors.grey),
                side: MaterialStateProperty.all<BorderSide>(
                    const BorderSide(color: Colors.green, width: 1.5)),
                foregroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xff025dbf)),
                fixedSize:
                    MaterialStateProperty.all<Size>(const Size.fromWidth(150)),
                minimumSize:
                    MaterialStateProperty.all<Size>(const Size(175, 45)),
                textStyle: MaterialStateProperty.all<TextStyle>(
                  const TextStyle(
                    fontSize: 25,
                    fontFamily: 'DMMono',
                    letterSpacing: 1.1,
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text('LOGIN'),
            ),
          ],
        ),
      ),
    );
  }

//New user details design
  Widget getNewUserDetailsDesign() {
    return Container(
      width: 305,
      height: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const Spacer(),
          OutlinedButton(
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all<Size>(
                const Size(95, 95),
              ),
            ),
            onPressed: () {},
            child: const Text('User'),
          ),
          const Spacer(),
          const Text(
            'Or',
            style: TextStyle(color: Colors.grey),
          ),
          const Spacer(),
          OutlinedButton(
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all<Size>(
                const Size(95, 95),
              ),
            ),
            onPressed: () {},
            child: const Text('Worker'),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
