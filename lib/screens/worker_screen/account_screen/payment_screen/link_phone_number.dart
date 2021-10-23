import 'package:flutter/material.dart';
import 'package:reconnect/screens/worker_screen/account_screen/payment_screen/payment_screen.dart';
import 'package:reconnect/screens/worker_screen/components/worker_style/worker_screen_text_style.dart';

//GooglePay PhonePay PayTM Aler Dialog Function
Future linkAccountWithPhoneNumber(BuildContext context, String title) async {
  bool isValidPhoneNumber = true;
  TextEditingController numberController = TextEditingController();
  return await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return StatefulBuilder(builder: (context, setState) {
          return AlertDialog(
            title: Text(title),
            content: TextField(
              controller: numberController,
              keyboardType: TextInputType.number,
              onChanged: (number) {
                setState(() {
                  isValidPhoneNumber = true;
                });
              },
              decoration: InputDecoration(
                errorText: isValidPhoneNumber
                    ? null
                    : 'Enter your valid phone number ',
              ),
            ),
            actions: [
              OutlinedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0.5),
                  foregroundColor: MaterialStateProperty.all(Colors.green),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  minimumSize: MaterialStateProperty.all(const Size(150, 50)),
                  shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
                onPressed: () => Navigator.pop(context),
                child: Text(
                  'cancel',
                  style: upiAddButtonTextStyle(),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0.5),
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  minimumSize: MaterialStateProperty.all(const Size(150, 50)),
                  shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
                onPressed: () {
                  if (numberController.text.length == 10) {
                    setState(() {
                      if (!addedAccountsList.contains(numberController.text)) {
                        isValidPhoneNumber = true;
                        addedAccountsList.add(numberController.text);
                        upiAddButtonClicked = false;
                        Navigator.pop(context);
                      } else {
                        isValidPhoneNumber = false;
                      }
                    });
                  } else {
                    setState(() {
                      isValidPhoneNumber = false;
                    });
                  }
                },
                child: Text(
                  'Validate',
                  style: upiAddButtonTextStyle(),
                ),
              )
            ],
          );
        });
      });
}
