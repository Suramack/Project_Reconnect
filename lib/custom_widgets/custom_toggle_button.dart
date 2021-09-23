import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reconnect/methods/default_variables.dart';

class CustomToggleButton extends StatefulWidget {
  const CustomToggleButton({Key? key}) : super(key: key);

  @override
  _CustomToggleButtonState createState() => _CustomToggleButtonState();
}

class _CustomToggleButtonState extends State<CustomToggleButton>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  bool existingUser = true;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this, initialIndex: 0);
    _tabController?.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 100,
        ),
        Container(
          width: 340,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.grey.shade400,
            borderRadius: BorderRadius.circular(100),
          ),
          child: TabBar(
            padding: const EdgeInsets.all(2),
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: const Color(0xffffffff),
            ),
            controller: _tabController,
            tabs: [
              Container(
                width: 130,
                height: 50,
                alignment: Alignment.center,
                child: Text(
                  'Existing',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: _tabController?.index == 0
                          ? Colors.black
                          : Colors.grey.shade100),
                ),
              ),
              Container(
                width: 130,
                height: 50,
                alignment: Alignment.center,
                child: Text(
                  'New',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: _tabController?.index == 1
                          ? Colors.black
                          : Colors.grey.shade100),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 340,
          height: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: TabBarView(
            controller: _tabController,
            children: [
              getExistingUserDetailsDesign(),
              getNewUserDetailsDesign(),
            ],
          ),
        )
      ],
    );
  }

//Existing user details design

  Widget getExistingUserDetailsDesign() {
    return Stack(
      children: [
        Container(
          width: 350,
          height: 250,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(blurRadius: 3, color: Colors.grey),
              ]),
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 305,
                  height: 142,
                  child: Column(
                    children: [
                      const TextField(
                        decoration: InputDecoration(
                            hintText: 'Email Address',
                            icon: Icon(
                              FontAwesomeIcons.envelope,
                              color: Color(0xff453e3d),
                            ),
                            border: InputBorder.none),
                      ),
                      const Spacer(),
                      Container(
                        width: 300,
                        height: 3,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      const Spacer(),
                      const TextField(
                        decoration: InputDecoration(
                            hintText: 'Password',
                            icon: Icon(
                              FontAwesomeIcons.lock,
                              color: Color(0xff453e3d),
                            ),
                            border: InputBorder.none),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 235,
          left: 87.5,
//Outline button
          child: OutlinedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              alignment: Alignment.bottomCenter,
              shadowColor: MaterialStateProperty.all<Color>(Colors.grey),
              side: MaterialStateProperty.all<BorderSide>(
                  const BorderSide(color: Colors.green, width: 1.5)),
              foregroundColor:
                  MaterialStateProperty.all<Color>(const Color(0xff025dbf)),
              fixedSize:
                  MaterialStateProperty.all<Size>(const Size.fromWidth(150)),
              minimumSize: MaterialStateProperty.all<Size>(const Size(175, 45)),
              textStyle: MaterialStateProperty.all<TextStyle>(
                const TextStyle(
                  fontSize: 25,
                  fontFamily: 'DMMono',
                  letterSpacing: 1.1,
                ),
              ),
            ),
            onPressed: () {},
            child: const Text('LOGIN'),
          ),
        ),
        Positioned(
          top: 300,
          left: 100,
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Forgot Password?',
              style: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 17,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        )
      ],
    );
  }

//New user details design
  Widget getNewUserDetailsDesign() {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(blurRadius: 3, color: Colors.grey),
          ]),
      child: Row(
        children: [
          const Spacer(),
          OutlinedButton(
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all<Size>(const Size(95, 95)),
              side: MaterialStateProperty.all(
                  const BorderSide(color: Colors.green, width: 2)),
            ),
            onPressed: () {},
            child: const Text(
              'User',
              style: TextStyle(color: Colors.green, fontSize: 18),
            ),
          ),
          const Spacer(),
          const Text(
            'Or',
            style: TextStyle(color: Colors.grey),
          ),
          const Spacer(),
          OutlinedButton(
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all<Size>(
                const Size(95, 95),
              ),
              side: MaterialStateProperty.all(
                  const BorderSide(color: Colors.green, width: 2)),
            ),
            onPressed: () {
              showBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 200,
                    );
                  });
            },
            child: const Text(
              'Worker',
              style: TextStyle(color: Colors.green, fontSize: 18),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
