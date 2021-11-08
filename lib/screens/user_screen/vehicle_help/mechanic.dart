import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reconnect/screens/user_screen/components/text_style.dart';

Future mechanic(BuildContext context, Size size) async => showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => Container(
        height: size.height * 0.9,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(children: [
          AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            elevation: 0.5,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () => null,
                icon: Icon(
                  FontAwesomeIcons.filter,
                  color: Colors.grey.shade300,
                ),
                tooltip: 'sort',
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(
                    FontAwesomeIcons.times,
                    color: Colors.grey.shade300,
                  ),
                  tooltip: 'close',
                ),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 13,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: size.height * 0.15,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3,
                          color: Colors.grey.shade300,
                        )
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //name, distance in km and est time
                        SizedBox(
                          width: 120,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Alexi bonn',
                                style: nameStyleOfWorker(),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '13km',
                                    style: distanceStyle(),
                                  ),
                                  Text(
                                    '15min',
                                    style: estTimeStyle(),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const VerticalDivider(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Call button
                            ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30))),
                                minimumSize: MaterialStateProperty.all(
                                    const Size(120, 40)),
                                maximumSize: MaterialStateProperty.all(
                                    const Size(120, 40)),
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor: MaterialStateProperty.all(
                                  const Color(0xff156ced),
                                ),
                              ),
                              onPressed: () => null,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Icon(
                                    FontAwesomeIcons.phoneAlt,
                                    size: 20,
                                  ),
                                  Text(
                                    'call',
                                    style: buttonTextStyle(),
                                  ),
                                ],
                              ),
                            ),
                            // request button
                            StatefulBuilder(builder: (context, setState) {
                              return ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30))),
                                  minimumSize: MaterialStateProperty.all(
                                      const Size(120, 40)),
                                  maximumSize: MaterialStateProperty.all(
                                      const Size(120, 40)),
                                  elevation: MaterialStateProperty.all(0),
                                  backgroundColor: MaterialStateProperty.all(
                                    const Color(0xfff02424),
                                  ),
                                ),
                                onPressed: () => showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                          title: const Text('Confirm'),
                                          actions: [
                                            ElevatedButton(
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                              child: const Text(
                                                'Cancel',
                                              ),
                                            ),
                                            ElevatedButton(
                                              onPressed: () => setState(() {
                                                Navigator.pop(context);
                                                Navigator.pop(context);
                                              }),
                                              child: const Text(
                                                'Ok',
                                              ),
                                            ),
                                          ],
                                        )),
                                child: Text(
                                  'request',
                                  style: buttonTextStyle(),
                                ),
                              );
                            }),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
