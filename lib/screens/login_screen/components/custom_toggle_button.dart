import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reconnect/screens/login_screen/components/get_existing_user_details_design.dart';
import 'package:reconnect/screens/registration_screen/user_registration_design/get_new_user_details_design.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
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
              const GetExistingUserDetailsDesign(),
              GetNewUserDetailsDesign(context: context),
            ],
          ),
        )
      ],
    );
  }
}
