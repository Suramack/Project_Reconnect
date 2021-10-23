import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reconnect/screens/worker_screen/components/worker_style/worker_screen_text_style.dart';

Drawer drawer(Size size) {
  return Drawer(
    child: Column(
      children: [
        SizedBox(
          width: 350,
          height: size.height,
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  width: 100,
                  height: size.height,
                  decoration: BoxDecoration(color: Colors.green, boxShadow: [
                    BoxShadow(
                      color: Colors.yellow.shade900,
                      offset: const Offset(8, 0),
                    )
                  ]),
                ),
              ),
              Positioned(
                child: Container(
                  width: 350,
                  height: 300,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(150),
                        bottomRight: Radius.circular(150),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 10,
                          color: Colors.grey,
                          offset: Offset(0, 3),
                        )
                      ]),
                  child: Text('reconnect.', style: drawerReconnectTextStyle()),
                ),
              ),
              drawerButtonList(
                590,
                'services',
                FontAwesomeIcons.dna,
                Colors.purpleAccent,
              ),
              drawerButtonList(
                670,
                'be a member',
                FontAwesomeIcons.userSecret,
                Colors.deepOrangeAccent,
              ),
              drawerButtonList(
                750,
                'contribute with us',
                FontAwesomeIcons.code,
                Colors.lightGreen,
              ),
              // Positioned(
              //   top: 420,
              //   child: OutlinedButton(
              //     style: ButtonStyle(
              //       foregroundColor:
              //           MaterialStateProperty.all(Colors.grey.shade500),
              //       minimumSize: MaterialStateProperty.all(
              //         const Size(300, 60),
              //       ),
              //     ),
              //     child: SizedBox(
              //       width: 250,
              //       child: Row(
              //         children: [
              //           Container(
              //             width: 50,
              //             height: 50,
              //             decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(8),
              //               gradient: LinearGradient(
              //                   colors: [Colors.blue.shade200, Colors.white],
              //                   begin: Alignment.topRight,
              //                   end: Alignment.bottomLeft),
              //             ),
              //             child: const Icon(
              //               FontAwesomeIcons.userSecret,
              //               color: Colors.deepOrangeAccent,
              //             ),
              //           ),
              //           const Spacer(),
              //           Text(
              //             'be a member',
              //             style: drawerServiceTextStyle(),
              //           ),
              //         ],
              //       ),
              //     ),
              //     onPressed: () => Fluttertoast.showToast(
              //       msg: 'later',
              //       backgroundColor: Colors.grey,
              //       fontSize: 18,
              //       gravity: ToastGravity.BOTTOM,
              //       textColor: Colors.white,
              //       toastLength: Toast.LENGTH_SHORT,
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ],
    ),
  );
}

Positioned drawerButtonList(
    double position, String title, IconData icon, Color color) {
  return Positioned(
    top: position,
    child: OutlinedButton(
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.grey.shade500),
          minimumSize: MaterialStateProperty.all(const Size(300, 60))),
      child: SizedBox(
        width: 250,
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: LinearGradient(
                    colors: [Colors.blue.shade200, Colors.white],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft),
              ),
              child: Icon(
                icon,
                color: color,
              ),
            ),
            const Spacer(),
            Text(
              title,
              style: drawerServiceTextStyle(),
            ),
          ],
        ),
      ),
      onPressed: () => Fluttertoast.showToast(
        msg: 'later',
        backgroundColor: Colors.grey,
        fontSize: 18,
        gravity: ToastGravity.BOTTOM,
        textColor: Colors.white,
        toastLength: Toast.LENGTH_SHORT,
      ),
    ),
  );
}
