import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TestWidget extends StatefulWidget {
  const TestWidget({Key? key}) : super(key: key);

  @override
  _TestWidgetState createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  List<CheckBoxList> checkBoxList = CheckBoxList.getCheckBoxList;

  void checkedStatus(bool value, int index) {
    setState(() {
      checkBoxList[index].isChecked = value;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 2,
            crossAxisCount: 2,
          ),
          itemCount: checkBoxList.length,
          itemBuilder: (context, index) => CheckboxListTile(
            contentPadding: EdgeInsets.all(1),
            title: checkBoxList[index].title,
            subtitle: checkBoxList[index].subTitle,
            checkColor: Colors.green,
            activeColor: Colors.transparent,
            value: checkBoxList[index].isChecked,
            onChanged: (value) => checkedStatus(value!, index),
          ),
        ));
  }
}

class CheckBoxList {
  Text? title;
  Text? subTitle;
  bool? isChecked;
  CheckBoxList({this.isChecked, this.subTitle, this.title});
  static List<CheckBoxList> getCheckBoxList = [
    CheckBoxList(
      title: const Text('Mobile EV Charger'),
      subTitle: const Text('If you have transportable EV charger?'),
      isChecked: false,
    ),
    CheckBoxList(
      title: const Text('Repair'),
      subTitle: const Text('Are you providing a transportable EV repair?'),
      isChecked: false,
    ),
    CheckBoxList(
      title: const Text('Battery Exchange'),
      subTitle: const Text('Are you providing battery swap services?'),
      isChecked: false,
    ),
    CheckBoxList(
      title: const Text('Charging point'),
      subTitle: const Text('Do you have a charging point?'),
      isChecked: false,
    )
  ];
}
