import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reconnect/screens/user_screen/components/text_style.dart';
import 'package:reconnect/screens/user_screen/ev_help/ev_charge/ev_charge_button.dart';

Future workShop(BuildContext context, Size size) => showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setState) => Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          height: size.height * 0.9,
          child: Column(
            children: [
              AppBar(
                backgroundColor: Colors.white,
                elevation: 0.4,
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
                    onPressed: () => showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('sort distance'),
                        actions: [
                          ElevatedButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('Cancel'),
                          ),
                          ElevatedButton(
                            onPressed: () => setState(() {
                              Navigator.pop(context);
                            }),
                            child: const Text('Ok'),
                          ),
                        ],
                      ),
                    ),
                    icon: Icon(
                      FontAwesomeIcons.filter,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      tooltip: 'close',
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
                  itemCount: 15,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
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
                            //Distance time and address
                            SizedBox(
                              width: size.width * 0.3,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '13km',
                                        style: nearMeDistance(),
                                      ),
                                      Text(
                                        '10min',
                                        style: nearMeEstTime(),
                                      ),
                                    ],
                                  ),
                                  //address of the charging point
                                  Text(
                                    'axis bank opp malappuram road',
                                    style: nearMeAddress(),
                                    maxLines: 2,
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                  )
                                ],
                              ),
                            ),
                            const VerticalDivider(),

                            //track
                            Container(
                              width: size.width * 0.25,
                              height: 70,
                              alignment: Alignment.center,
                              child: TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      FontAwesomeIcons.locationArrow,
                                      size: 22,
                                    ),
                                    Text(
                                      'track',
                                      style: trackTextStyle(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
