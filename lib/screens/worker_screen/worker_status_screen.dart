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
      body: Card(
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
                endIndent: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 33,
                    height: 33,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: const [
                          BoxShadow(color: Colors.grey, blurRadius: 1),
                        ]),
                    child: const Icon(
                      FontAwesomeIcons.checkCircle,
                      size: 30,
                      color: Colors.green,
                    ),
                  ),
                  Text('request submitted')
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
