import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reconnect/screens/worker_screen/components/worker_style/worker_screen_text_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: ListView.builder(
          itemCount: 6,
          itemBuilder: (BuildContext contex, int index) => Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: size.width,
                  height: 165,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 2,
                            color: Colors.grey.shade300)
                      ]),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          //Client name card
                          //C1
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15.0, right: 10.0, top: 15, bottom: 10),
                            child: Container(
                              width: size.width * 0.55,
                              height: 75,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  // color: Colors.grey.shade100,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.shade300,
                                        spreadRadius: 1)
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Suramack',
                                          style: clientNameStyle(),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          '13km',
                                          style: clientDistance(),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'transport EVC 300kw',
                                      style: clientHelpType(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              OutlinedButton.icon(
                                onPressed: () => null,
                                icon: const Icon(
                                  FontAwesomeIcons.phoneAlt,
                                  size: 16,
                                ),
                                label: Text(
                                  'call',
                                  style: clientHelpButtonTextStyle(),
                                ),
                                style: ButtonStyle(
                                  elevation:
                                      MaterialStateProperty.all<double>(0),
                                  minimumSize: MaterialStateProperty.all<Size>(
                                    const Size(110, 50),
                                  ),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          // Colors.blue.shade800,
                                          Colors.white),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              OutlinedButton.icon(
                                onPressed: () => null,
                                icon: const Icon(
                                  FontAwesomeIcons.locationArrow,
                                  size: 16,
                                ),
                                label: Text(
                                  'track',
                                  style: clientHelpButtonTextStyle(),
                                ),
                                style: ButtonStyle(
                                  elevation:
                                      MaterialStateProperty.all<double>(0),
                                  minimumSize: MaterialStateProperty.all<Size>(
                                    const Size(110, 50),
                                  ),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                    // Colors.blue.shade800,
                                    Colors.white,
                                  ),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      //C2
                      const Padding(
                        padding: EdgeInsets.only(top: 15.0, bottom: 15),
                        child: VerticalDivider(
                          thickness: 1,
                        ),
                      ),
                      //C3
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all<double>(0),
                              minimumSize: MaterialStateProperty.all<Size>(
                                const Size(120, 45),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.green.shade500,
                              ),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9),
                                ),
                              ),
                            ),
                            child: Text(
                              'accept',
                              style: clientHelpButtonTextStyle(),
                            ),
                            onPressed: () => null,
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all<double>(0),
                              minimumSize: MaterialStateProperty.all<Size>(
                                const Size(120, 45),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.red.shade500,
                              ),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9),
                                ),
                              ),
                            ),
                            child: Text(
                              'reject',
                              style: clientHelpButtonTextStyle(),
                            ),
                            onPressed: () => null,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )),
    );
  }
}
