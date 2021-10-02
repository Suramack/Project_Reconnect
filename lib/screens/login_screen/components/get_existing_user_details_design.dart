import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GetExistingUserDetailsDesign extends StatelessWidget {
  const GetExistingUserDetailsDesign({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 350,
          height: 250,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(blurRadius: 3, color: Colors.grey),
              ]),
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 305,
                  height: 142,
                  child: Column(
                    children: [
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
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Password',
                            icon: Icon(
                              FontAwesomeIcons.lock,
                              color: Color(0xff453e3d),
                            ),
                            border: InputBorder.none),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 235,
          left: 87.5,
//Outline button
          child: OutlinedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              alignment: Alignment.bottomCenter,
              shadowColor: MaterialStateProperty.all<Color>(Colors.grey),
              side: MaterialStateProperty.all<BorderSide>(
                  const BorderSide(color: Colors.green, width: 1.5)),
              foregroundColor:
                  MaterialStateProperty.all<Color>(const Color(0xff025dbf)),
              fixedSize:
                  MaterialStateProperty.all<Size>(const Size.fromWidth(150)),
              minimumSize: MaterialStateProperty.all<Size>(const Size(175, 45)),
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
        ),
        Positioned(
          top: 300,
          left: 100,
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Forgot Password?',
              style: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 17,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        )
      ],
    );
  }
}
