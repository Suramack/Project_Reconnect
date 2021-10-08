import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reconnect/screens/registration_screen/worker_registration/components/worker_text_style.dart';

class WorkerForm extends StatelessWidget {
  const WorkerForm({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        25,
      ),
      child: Container(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
          top: 15,
        ),
        height: size.height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: const [
            BoxShadow(blurRadius: 2, color: Colors.grey),
          ],
        ),
        child: Column(children: [
          TextField(
            cursorColor: Colors.green,
            decoration: InputDecoration(
              label: Text(
                'Name',
                style: workerTextStyle(),
              ),
              labelStyle: TextStyle(color: Colors.grey.shade500),
              icon: const Icon(
                FontAwesomeIcons.user,
                color: Color(0xff453e3d),
                size: 22,
              ),
              border: InputBorder.none,
            ),
          ),
          Container(
            width: 315,
            height: 1,
            margin: const EdgeInsets.only(top: 3, bottom: 3),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          TextField(
            cursorColor: Colors.green,
            decoration: InputDecoration(
              label: Text(
                'Email',
                style: workerTextStyle(),
              ),
              labelStyle: TextStyle(color: Colors.grey.shade500),
              icon: const Icon(
                FontAwesomeIcons.envelope,
                color: Color(0xff453e3d),
                size: 22,
              ),
              border: InputBorder.none,
            ),
          ),
          Container(
            width: 315,
            height: 1,
            margin: const EdgeInsets.only(top: 3, bottom: 3),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          TextField(
            cursorColor: Colors.green,
            decoration: InputDecoration(
              label: Text(
                'Phone Number',
                style: workerTextStyle(),
              ),
              labelStyle: TextStyle(color: Colors.grey.shade500),
              icon: const Icon(
                FontAwesomeIcons.mobileAlt,
                color: Color(0xff453e3d),
                size: 22,
              ),
              border: InputBorder.none,
            ),
          ),
          Container(
            width: 315,
            height: 1,
            margin: const EdgeInsets.only(top: 3, bottom: 3),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            height: 25,
            alignment: Alignment.bottomLeft,
            child: Row(
              children: [
                const Icon(
                  FontAwesomeIcons.car,
                  color: Color(0xff453e3d),
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  'Services',
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 16),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
