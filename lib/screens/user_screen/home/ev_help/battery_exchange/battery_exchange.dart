import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reconnect/screens/user_screen/components/text_style.dart';

List<String> evScooterList = [
  'Ola',
  'Ather',
  'Simple',
  'Bajaj',
  'TVS',
  'Hero',
  'Ampere',
];
Random randomIndex = Random();
int k = 0;
Future confirmDialog(BuildContext context) => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Confirm'),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context);
            },
            child: const Text('ok'),
          ),
        ],
      ),
    );
void batteryExchange(BuildContext context, Size size) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (context) => Container(
      height: size.height * 0.9,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            elevation: 0.5,
            actions: [
              IconButton(
                onPressed: () => null,
                icon: const Icon(FontAwesomeIcons.filter),
                tooltip: 'sort',
                color: Colors.green.shade300,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    FontAwesomeIcons.times,
                    color: Colors.green,
                  ),
                  tooltip: 'close',
                ),
              )
            ],
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
          ),
          Expanded(
            child: StatefulBuilder(builder: (context, setState) {
              return ListView.builder(
                itemCount: 7,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //Name and type
                          SizedBox(
                            width: 120,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Suramack',
                                  style: nameStyleOfWorker(),
                                ),
                                Text(
                                  evScooterList[randomIndex
                                      .nextInt(evScooterList.length)],
                                  style: typeStyleOfWorker(),
                                )
                              ],
                            ),
                          ),
                          const VerticalDivider(),
                          //distance and estimate time
                          Container(
                            width: 100,
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '13km',
                                  style: distanceStyle(),
                                ),
                                Text(
                                  '14mint',
                                  style: estTimeStyle(),
                                )
                              ],
                            ),
                          ),
                          const VerticalDivider(),
                          //request and call button
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                style: ButtonStyle(
                                  elevation: MaterialStateProperty.all(0),
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.blue.shade500),
                                  minimumSize: MaterialStateProperty.all(
                                      const Size(100, 40)),
                                  maximumSize: MaterialStateProperty.all(
                                      const Size(100, 45)),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
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
                                    )
                                  ],
                                ),
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  elevation: MaterialStateProperty.all(0),
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.red.shade600),
                                  minimumSize: MaterialStateProperty.all(
                                      const Size(100, 40)),
                                  maximumSize: MaterialStateProperty.all(
                                      const Size(100, 45)),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                                onPressed: () => confirmDialog(context),
                                child: Text(
                                  'request',
                                  style: buttonTextStyle(),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
          )
        ],
      ),
    ),
  );
}
