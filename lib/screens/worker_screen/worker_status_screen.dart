import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reconnect/screens/worker_screen/components/worker_request_status_tile.dart';
import 'package:reconnect/screens/worker_screen/components/worker_style/worker_screen_text_style.dart';

class WorkerStatusScreen extends StatefulWidget {
  const WorkerStatusScreen({Key? key}) : super(key: key);

  @override
  _WorkerStatusScreenState createState() => _WorkerStatusScreenState();
}

class _WorkerStatusScreenState extends State<WorkerStatusScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Card(
            borderOnForeground: false,
            color: Colors.white,
            elevation: 0,
            margin: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 30,
            ),
            child: Container(
              padding: const EdgeInsets.only(
                left: 20,
                top: 20,
                right: 20,
              ),
              alignment: Alignment.topLeft,
              height: size.height * .6,
              width: size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 1,
                    )
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  requestStatustTile(),
                  Divider(
                    color: Colors.grey.shade400,
                    thickness: .3,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  requestTiles(0),
                  const Expanded(
                    child: VerticalDivider(
                      color: Colors.lightBlue,
                      thickness: 1,
                      width: 30,
                    ),
                  ),
                  requestTiles(1),
                  const Expanded(
                    child: VerticalDivider(
                      color: Colors.lightBlue,
                      thickness: 1,
                      width: 30,
                    ),
                  ),
                  requestTiles(2),
                  const Spacer(),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () => null,
            child: backToHomeButtonTextStyle(),
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all<Size>(
                Size(size.width * .9, 55),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              elevation: MaterialStateProperty.all<double>(1),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              shadowColor: MaterialStateProperty.all<Color>(Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}
