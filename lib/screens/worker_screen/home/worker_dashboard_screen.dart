import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reconnect/screens/worker_screen/components/worker_style/worker_screen_text_style.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  // List<DashBoardTile> tileData = DashBoardTile();
  // List<DashBoardTile> getTile = [
  //   DashBoardTile(
  //       title: 'Total help request',
  //       icon: const Icon(
  //         FontAwesomeIcons.users,
  //         color: Colors.grey,
  //       ),
  //       value: '103'),
  //   DashBoardTile(
  //       title: 'Accepted',
  //       icon: const Icon(
  //         FontAwesomeIcons.handsHelping,
  //         color: Color(0xff453e3d),
  //       ),
  //       value: '74'),
  //   DashBoardTile(
  //     title: 'Rejected',
  //     icon: const Icon(
  //       FontAwesomeIcons.users,
  //       color: Color(0xff453e3d),
  //     ),
  //     value: '29',
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        OverviewContainer(size: size),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            padding: const EdgeInsets.all(10.0),
            width: size.width,
            height: size.height * 0.4,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  color: Colors.grey.shade300,
                )
              ],
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            child: Column(
              children: [
                Text(
                  'Dashboard',
                  style: dashboardTextStyle(),
                ),
                const Divider(),
                Container(
                  padding: EdgeInsets.all(10),
                  width: size.width,
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      tileWidget(
                          Icon(
                            FontAwesomeIcons.users,
                            color: Colors.grey.shade400,
                            size: 20,
                          ),
                          'Total help request',
                          '103'),
                      tileWidget(
                          Icon(
                            FontAwesomeIcons.handsHelping,
                            color: Colors.grey.shade400,
                            size: 20,
                          ),
                          'Accepted',
                          '74'),
                      tileWidget(
                          Icon(
                            FontAwesomeIcons.handshakeSlash,
                            color: Colors.grey.shade400,
                            size: 20,
                          ),
                          'Rejected',
                          '29'),
                    ],
                  ),
                ),
                const Divider(),
                Container(
                  width: size.width,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(blurRadius: .5, color: Colors.grey)
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 22.0, right: 10),
                        child: Icon(
                          FontAwesomeIcons.medal,
                          color: Colors.lightGreen,
                          size: 22,
                        ),
                      ),
                      Text(
                        'Performance',
                        style: performanceTextStyle(),
                      ),
                      const Spacer(),
                      //Performance status good or bad
                      Container(
                        width: 100,
                        height: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                colors: [
                                  Colors.lightBlue,
                                  Colors.lightBlueAccent,
                                ],
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft),
                            color: Colors.lightBlueAccent,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade300,
                                blurRadius: 10,
                              )
                            ],
                            borderRadius: BorderRadius.circular(100)),
                        child: Text(
                          'Good',
                          style: performanceStatusTextStyle(),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

Widget tileWidget(Widget icon, String title, String value) => Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: icon,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: dashboardTileTextStyle(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            value,
            style: dashboardTileTextStyle(),
          ),
        )
      ],
    );

class OverviewContainer extends StatelessWidget {
  const OverviewContainer({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.4,
      color: Colors.grey.shade100,
      child: Stack(
        children: [
          Positioned(
            child: Container(
              width: size.width,
              height: size.height * 0.2,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                  ),
                ],
                color: Colors.green,
                gradient: LinearGradient(
                  colors: [
                    Colors.lightBlueAccent,
                    Colors.lightBlue,
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(500),
                  bottomRight: Radius.circular(500),
                ),
              ),
            ),
          ),
          Positioned(
            left: size.width * .25,
            top: size.height * 0.1,
            child: Container(
              width: size.width * 0.5,
              height: size.width * 0.5,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(color: Colors.grey, blurRadius: 1),
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Spacer(),
                  Text(
                    'Overview',
                    style: dashBoardOverviewTextStyle(),
                  ),
                  const Divider(),
                  Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey.shade100,
                            offset: const Offset(0, 10),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(
                          100,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text('73%', style: overviewPercentageTextStyle())),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
