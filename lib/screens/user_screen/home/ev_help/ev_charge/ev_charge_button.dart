import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reconnect/screens/user_screen/components/text_style.dart';

ScrollController controller = ScrollController();
void evChargeButton(BuildContext context, Size size) {
  showModalBottomSheet(
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    enableDrag: true,
    context: context,
    builder: (context) => StatefulBuilder(
      builder: (context, setState) => Container(
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
              elevation: 0.4,
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              actions: [
                IconButton(
                  tooltip: 'sort',
                  onPressed: () => sortDialogBox(context),
                  icon: Icon(
                    FontAwesomeIcons.filter,
                    color: Colors.grey.shade500,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: IconButton(
                    tooltip: 'close',
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      FontAwesomeIcons.times,
                      color: Colors.grey.shade500,
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: ListView.builder(
                controller: controller,
                itemCount: 7,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 130,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(color: Colors.grey.shade200, blurRadius: 3)
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //name and type of work
                          SizedBox(
                            width: 140,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 25,
                                  height: 20,
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xff9f38ff),
                                        Color(0xff7513ed),
                                      ],
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(7),
                                      bottomRight: Radius.circular(7),
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    '4.5',
                                    style: ratingStyle(),
                                  ),
                                ),
                                //Worker Name
                                Text(
                                  'MaximaAlexander',
                                  style: workersNameTextStyle(),
                                ),
                                //Worker Type(eg: Mobile ev charger or Battery Exchange )
                                Text(
                                  'Mobile EV charger',
                                  style: workersTypeTextStyle(),
                                ),
                              ],
                            ),
                          ),
                          const VerticalDivider(),
                          //distance and estimate time

                          Container(
                            width: 80,
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Distance in km
                                Text(
                                  '13km',
                                  style: workersKmTextStyle(),
                                ),
                                // Estimate time
                                Text(
                                  '10min',
                                  style: workersTimeTextStyle(),
                                )
                              ],
                            ),
                          ),
                          const VerticalDivider(),

                          //call and request button

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
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Future<dynamic> sortDialogBox(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('Sort the range'),
      actions: [
        ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cance'),
        ),
        ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Ok'),
        ),
      ],
    ),
  );
}
