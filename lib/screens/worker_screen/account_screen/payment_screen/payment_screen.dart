import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reconnect/screens/worker_screen/account_screen/payment_screen/link_phone_number.dart';
import 'package:reconnect/screens/worker_screen/account_screen/payment_screen/upi_alert_dialog.dart';
import 'package:reconnect/screens/worker_screen/components/worker_style/worker_screen_text_style.dart';
import 'package:reconnect/screens/worker_screen/home/worker_home_screen.dart';

List<String> addedAccountsList = [
  'please add account',
];
List<bool> removeAccountFromList = [];

bool isValid = false;
bool upiAddButtonClicked = false;
TextEditingController upiIdController = TextEditingController();
int accountLength = 0;

Future payment(BuildContext context, Size size) => showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      isDismissible: false,
      enableDrag: false,
      backgroundColor: Colors.transparent,
      builder: (BuildContext contex) => StatefulBuilder(
        builder: (context, setState) {
          return Container(
            height: size.height * 0.9,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                Container(
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: size.width * 0.4),
                            child: Text(
                              'your accounts',
                              style: paymetAccountTextStyle(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  setState(
                                    () {
                                      upiAddButtonClicked = false;
                                    },
                                  );
                                },
                                icon: const Icon(
                                  FontAwesomeIcons.times,
                                  color: Colors.green,
                                )),
                          ),
                        ],
                      ),
                      Container(
                        width: 300,
                        height: 200,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ListView.builder(
                          itemCount: addedAccountsList.length == 1
                              ? addedAccountsList.length
                              : addedAccountsList.length - 1,
                          itemBuilder: (BuildContext contex, int index) =>
                              Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 250,
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                addedAccountsList[addedAccountsList.length == 1
                                    ? index
                                    : index + 1],
                                style: addedAccountListTextStyle(),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              elevation: MaterialStateProperty.all<double>(1),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.green)),
                          onPressed: () => setState(() {
                            upiAddButtonClicked = true;
                          }),
                          child: Text('add UPI ID or phone number',
                              style: upiAddButtonTextStyle()),
                        ),
                      ),
                      upiAddButtonClicked
                          ? Container(
                              padding: const EdgeInsets.only(top: 8.0),
                              width: 250,
                              alignment: Alignment.center,
                              child: Wrap(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        gradient: LinearGradient(
                                            colors: [
                                              Colors.greenAccent.shade700,
                                              Colors.orange,
                                            ],
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft),
                                      ),
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                            fixedSize:
                                                MaterialStateProperty.all<Size>(
                                                    const Size(100, 100)),
                                            shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  100,
                                                ),
                                              ),
                                            ),
                                            elevation: MaterialStateProperty
                                                .all<double>(1),
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.transparent),
                                            shadowColor:
                                                MaterialStateProperty.all(
                                                    Colors.transparent)),
                                        onPressed: () {
                                          upiIdController.clear();
                                          showDialog(
                                            barrierDismissible: false,
                                            context: context,
                                            builder: (BuildContext contex) {
                                              //Ths value of 'isValid' is initially true,
                                              //because of first time while calling UPI ID button to not shows error message
                                              isValid = true;
                                              return const UpiAlertDialog();
                                            },
                                          );
                                        },
                                        child: Text(
                                          'UPI ID',
                                          style: upiAddButtonTextStyle(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.blueAccent.shade400,
                                            Colors.blue.shade500,
                                          ],
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                        ),
                                      ),
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          fixedSize:
                                              MaterialStateProperty.all<Size>(
                                                  const Size(100, 100)),
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                100,
                                              ),
                                            ),
                                          ),
                                          elevation:
                                              MaterialStateProperty.all<double>(
                                                  1),
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Colors.transparent),
                                          shadowColor:
                                              MaterialStateProperty.all(
                                                  Colors.transparent),
                                        ),
                                        onPressed: () =>
                                            linkAccountWithPhoneNumber(
                                                contex, 'Gpay number'),
                                        child: Text(
                                          'Google pay',
                                          textAlign: TextAlign.center,
                                          style: upiAddButtonTextStyle(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.deepPurple.shade500,
                                            Colors.purple.shade500,
                                          ],
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                        ),
                                      ),
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          fixedSize:
                                              MaterialStateProperty.all<Size>(
                                                  const Size(100, 100)),
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                100,
                                              ),
                                            ),
                                          ),
                                          elevation:
                                              MaterialStateProperty.all<double>(
                                                  1),
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Colors.transparent),
                                          shadowColor:
                                              MaterialStateProperty.all(
                                                  Colors.transparent),
                                        ),
                                        onPressed: () =>
                                            linkAccountWithPhoneNumber(
                                                context, 'PhonePay number'),
                                        child: Text(
                                          'Phone Pay',
                                          textAlign: TextAlign.center,
                                          style: upiAddButtonTextStyle(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.blue.shade800,
                                            Colors.blue.shade600,
                                          ],
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                        ),
                                      ),
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          fixedSize:
                                              MaterialStateProperty.all<Size>(
                                                  const Size(100, 100)),
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                100,
                                              ),
                                            ),
                                          ),
                                          elevation:
                                              MaterialStateProperty.all<double>(
                                                  1),
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Colors.transparent),
                                          shadowColor:
                                              MaterialStateProperty.all(
                                                  Colors.transparent),
                                        ),
                                        onPressed: () =>
                                            linkAccountWithPhoneNumber(
                                                context, 'PayTM number'),
                                        child: Text(
                                          'PayTM',
                                          style: upiAddButtonTextStyle(),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Container(),
                      !upiAddButtonClicked
                          ? Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              //Remove account
                              child: OutlinedButton(
                                style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all(
                                      const Size(200, 50)),
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.green),
                                ),
                                onPressed: () {
                                  if (addedAccountsList.length == 1) {
                                    setState(() {
                                      Fluttertoast.showToast(
                                        msg: 'there is no linked account',
                                        toastLength: Toast.LENGTH_SHORT,
                                        gravity: ToastGravity.BOTTOM,
                                        backgroundColor: Colors.grey,
                                        fontSize: 18,
                                        textColor: Colors.white,
                                      );
                                    });
                                  } else {
                                    setState(() {
                                      removeAccountFromList = List.filled(
                                          addedAccountsList.length - 1, false);
                                    });

                                    showDialog(
                                      barrierDismissible: false,
                                      context: context,
                                      builder: (BuildContext context) =>
                                          StatefulBuilder(
                                        builder: (context, setState) {
                                          return AlertDialog(
                                              title: const Text(
                                                  'remove your account'),
                                              actions: [
                                                ElevatedButton(
                                                  style: ButtonStyle(
                                                    elevation:
                                                        MaterialStateProperty
                                                            .all(0.5),
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all(Colors.green),
                                                    minimumSize:
                                                        MaterialStateProperty
                                                            .all(const Size(
                                                                150, 50)),
                                                    shape: MaterialStateProperty.all(
                                                        const RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius.all(
                                                                    Radius.circular(
                                                                        10)))),
                                                  ),
                                                  onPressed: () =>
                                                      Navigator.pop(context),
                                                  child: Text(
                                                    'cancel',
                                                    style:
                                                        upiAddButtonTextStyle(),
                                                  ),
                                                ),
                                                OutlinedButton(
                                                  style: ButtonStyle(
                                                      minimumSize:
                                                          MaterialStateProperty
                                                              .all(const Size(
                                                                  150, 50)),
                                                      foregroundColor:
                                                          MaterialStateProperty
                                                              .all(Colors
                                                                  .green)),
                                                  onPressed: () {
                                                    setState(() {
                                                      for (int i = 0;
                                                          i <
                                                              removeAccountFromList
                                                                  .length;
                                                          i++) {
                                                        if (removeAccountFromList[
                                                            i]) {
                                                          Fluttertoast
                                                              .showToast(
                                                            msg:
                                                                'Under maintenance',
                                                            backgroundColor:
                                                                Colors.grey,
                                                            fontSize: 18,
                                                            gravity:
                                                                ToastGravity
                                                                    .BOTTOM,
                                                            textColor:
                                                                Colors.white,
                                                          );
                                                          Navigator.pop(
                                                              context);
                                                        } else {
                                                          Fluttertoast.showToast(
                                                              msg:
                                                                  'select your account',
                                                              backgroundColor:
                                                                  Colors.grey,
                                                              fontSize: 18,
                                                              gravity:
                                                                  ToastGravity
                                                                      .BOTTOM,
                                                              textColor:
                                                                  Colors.white,
                                                              toastLength: Toast
                                                                  .LENGTH_SHORT);
                                                        }
                                                      }
                                                    });
                                                  },
                                                  child: Text('remove',
                                                      style:
                                                          upiAddButtonTextStyle()),
                                                ),
                                              ],
                                              content: SizedBox(
                                                height: 200,
                                                width: 300,
                                                child: ListView.builder(
                                                    itemCount: addedAccountsList
                                                            .length -
                                                        1,
                                                    itemBuilder:
                                                        (contex, index) {
                                                      return SizedBox(
                                                        width: 200,
                                                        child: ToggleButtons(
                                                          onPressed: (value) {
                                                            setState(() {
                                                              removeAccountFromList[
                                                                      index] =
                                                                  !removeAccountFromList[
                                                                      index];
                                                            });
                                                          },
                                                          children: [
                                                            Text(
                                                                addedAccountsList[
                                                                    index + 1]),
                                                          ],
                                                          isSelected: [
                                                            removeAccountFromList[
                                                                index]
                                                          ],
                                                        ),
                                                      );
                                                    }),
                                              ));
                                        },
                                      ),
                                    );
                                  }
                                },
                                child: Text(
                                  'remove account',
                                  style: upiAddButtonTextStyle(),
                                ),
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
