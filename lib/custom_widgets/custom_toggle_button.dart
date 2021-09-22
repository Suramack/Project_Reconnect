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

  bool _setActiveTabIndex() {
    if (_tabController?.index == null) {
      print('null');
      return existingUser;
    } else if (_tabController?.index == 1) {
      print('1');

      return !existingUser;
    } else {
      print('0');

      return existingUser;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 325,
          height: 75,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(100)),
          child: TabBar(
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.green,
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
                          ? Colors.white
                          : Colors.black),
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
                          ? Colors.white
                          : Colors.black),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 305,
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
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 15),
          width: 305,
          height: 290,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
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
      ],
    );
  }

//New user details design
  Widget getNewUserDetailsDesign() {
    return Container(
      width: 305,
      height: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const Spacer(),
          OutlinedButton(
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all<Size>(
                const Size(95, 95),
              ),
            ),
            onPressed: () {},
            child: const Text('User'),
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
            ),
            onPressed: () {},
            child: const Text('Worker'),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
