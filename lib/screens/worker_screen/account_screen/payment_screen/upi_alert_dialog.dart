import 'package:flutter/material.dart';
import 'package:reconnect/screens/worker_screen/account_screen/payment_screen/payment_screen.dart';
import 'package:reconnect/screens/worker_screen/components/worker_style/worker_screen_text_style.dart';

class UpiAlertDialog extends StatefulWidget {
  const UpiAlertDialog({
    Key? key,
  }) : super(key: key);

  @override
  State<UpiAlertDialog> createState() => _UpiAlertDialogState();
}

class _UpiAlertDialogState extends State<UpiAlertDialog> {
  bool upiValidator(TextEditingController upi) {
    String upiId = upi.text;

    if (upiId.contains('@')) {
      setState(() {
        addedAccountsList.add(upiId);
        isValid = true;
        upiAddButtonClicked = false;
      });
    } else {
      setState(() {
        isValid = false;
      });
    }

    return isValid;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Enter UPI ID to validate'),
      content: TextField(
        controller: upiIdController,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            errorText: isValid ? null : 'please enter Valid UPI ID'),
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
            'Cancel',
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
          onPressed: () =>
              upiValidator(upiIdController) ? Navigator.pop(context) : null,
          child: Text(
            'Validate',
            style: upiAddButtonTextStyle(),
          ),
        ),
      ],
    );
  }
}
