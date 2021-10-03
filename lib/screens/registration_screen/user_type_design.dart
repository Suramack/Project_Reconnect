import 'package:flutter/material.dart';
import 'package:reconnect/screens/registration_screen/user_registration_design/custom_model_bottom_sheet.dart';
// as bottom_sheet;
import 'package:reconnect/screens/registration_screen/worker_registration/custom_model_bottom_sheet.dart';

class GetNewUserDetailsDesign extends StatelessWidget {
  const GetNewUserDetailsDesign({
    Key? key,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(blurRadius: 3, color: Colors.grey),
          ]),
      child: Row(
        children: [
          const Spacer(),
          OutlinedButton(
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all<Size>(const Size(95, 95)),
              side: MaterialStateProperty.all(
                  const BorderSide(color: Colors.green, width: 2)),
            ),
            onPressed: () {
              bottomSheet(context);
            },
            child: const Text(
              'User',
              style: TextStyle(color: Colors.green, fontSize: 18),
            ),
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
              side: MaterialStateProperty.all(
                  const BorderSide(color: Colors.green, width: 2)),
            ),
            onPressed: () {
              bottomsheet(context);
            },
            child: const Text(
              'Worker',
              style: TextStyle(color: Colors.green, fontSize: 18),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
