import 'package:flutter/material.dart';
import 'package:reconnect/screens/worker_screen/account_screen/payment_screen/payment_screen.dart';

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
      title: Text('Enter UPI ID to validate'),
      content: TextField(
        controller: upiIdController,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            errorText: isValid ? null : 'please enter Valid UPI ID'),
      ),
      actions: [
        ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () =>
              upiValidator(upiIdController) ? Navigator.pop(context) : null,
          child: Text('Validate'),
        ),
      ],
    );
  }
}
