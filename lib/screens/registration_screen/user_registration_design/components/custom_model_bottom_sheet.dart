import 'package:flutter/material.dart';
import 'package:reconnect/screens/registration_screen/user_registration_design/components/user_registration_design_form.dart';

bottomSheet(context) {
  return showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(13)),
      ),
      backgroundColor: Colors.white,
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Column(
              children: const [
                UserRegistration(),
              ],
            ),
          ),
        );
      });
}
