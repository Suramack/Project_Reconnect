import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Sstack extends StatefulWidget {
  const Sstack({Key? key}) : super(key: key);

  @override
  _SstackState createState() => _SstackState();
}

class _SstackState extends State<Sstack> with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TabBar(
            controller: tabController,
            tabs: const [
              Text('hi'),
              Text('hi'),
              Text('hi'),
            ],
          ),
          Expanded(
            child: TabBarView(controller: tabController, children: const [
              Text('data'),
              Text('data'),
              Text('data'),
            ]),
          )
        ],
      ),
    ));
  }
}
