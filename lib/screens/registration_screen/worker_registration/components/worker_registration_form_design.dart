import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reconnect/screens/registration_screen/worker_registration/components/worker_text_style.dart';
import 'package:reconnect/test_widget.dart';

class WorkerForm extends StatefulWidget {
  const WorkerForm({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<WorkerForm> createState() => _WorkerFormState();
}

class _WorkerFormState extends State<WorkerForm> {
  List<CheckBoxList> checkBoxList = CheckBoxList.getList;
  void isCheck(bool value, int index) {
    setState(() {
      checkBoxList[index].isChecked = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        25,
      ),
      child: Container(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
          top: 15,
        ),
        height: widget.size.height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: const [
            BoxShadow(blurRadius: 2, color: Colors.grey),
          ],
        ),
        child: Column(children: [
          TextField(
            cursorColor: Colors.green,
            decoration: InputDecoration(
              label: Text(
                'Name',
                style: workerlabelTextStyle(),
              ),
              labelStyle: TextStyle(color: Colors.grey.shade500),
              icon: const Icon(
                FontAwesomeIcons.user,
                color: Color(0xff453e3d),
                size: 22,
              ),
              border: InputBorder.none,
            ),
          ),
          line(),
          TextField(
            cursorColor: Colors.green,
            decoration: InputDecoration(
              label: Text(
                'Email',
                style: workerlabelTextStyle(),
              ),
              labelStyle: TextStyle(color: Colors.grey.shade500),
              icon: const Icon(
                FontAwesomeIcons.envelope,
                color: Color(0xff453e3d),
                size: 22,
              ),
              border: InputBorder.none,
            ),
          ),
          line(),
          TextField(
            cursorColor: Colors.green,
            decoration: InputDecoration(
              label: Text(
                'Phone Number',
                style: workerlabelTextStyle(),
              ),
              labelStyle: TextStyle(color: Colors.grey.shade500),
              icon: const Icon(
                FontAwesomeIcons.mobileAlt,
                color: Color(0xff453e3d),
                size: 22,
              ),
              border: InputBorder.none,
            ),
          ),
          line(),
          Container(
            margin: const EdgeInsets.only(top: 10),
            height: 25,
            alignment: Alignment.bottomLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  FontAwesomeIcons.car,
                  color: Color(0xff453e3d),
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  'EV Services',
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 16),
                ),
              ],
            ),
          ),
          //Services
          Container(
            height: widget.size.width * .53,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: checkBoxList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.7,
                crossAxisSpacing: 2,
              ),
              itemBuilder: (BuildContext context, index) => CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                contentPadding: const EdgeInsets.only(top: 15, right: 9),
                checkColor: Colors.green,
                activeColor: Colors.transparent,
                title: checkBoxList[index].title,
                subtitle: checkBoxList[index].subTitle,
                value: checkBoxList[index].isChecked,
                onChanged: (value) => isCheck(value!, index),
              ),
            ),
          ),
          line(),
        ]),
      ),
    );
  }

//The Line Container for separation of feilds
  Container line() {
    return Container(
      width: 315,
      height: 1,
      margin: const EdgeInsets.only(top: 3, bottom: 3),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}

class CheckBoxList {
  int? id;
  Text? title;
  Text? subTitle;
  bool? isChecked;

  CheckBoxList({this.title, this.subTitle, this.isChecked, this.id});
  static List<CheckBoxList> getList = [
    CheckBoxList(
      id: 1,
      title: Text(
        'Mobile EV Charger',
        style: workerServicesTitleStyle(),
      ),
      subTitle: Text(
        'Do you have transportable EV charger?',
        style: workerServicesSubTitleStyle(),
      ),
      isChecked: false,
    ),
    CheckBoxList(
      id: 2,
      title: Text(
        'Repair',
        style: workerServicesTitleStyle(),
      ),
      subTitle: Text(
        'Are you providing a transportable EV repair?',
        style: workerServicesSubTitleStyle(),
      ),
      isChecked: false,
    ),
    CheckBoxList(
      id: 3,
      title: Text(
        'Battery Exchange',
        style: workerServicesTitleStyle(),
      ),
      subTitle: Text(
        'Are you providing battery swap services?',
        style: workerServicesSubTitleStyle(),
      ),
      isChecked: false,
    ),
    CheckBoxList(
      id: 4,
      title: Text(
        'Charging point',
        style: workerServicesTitleStyle(),
      ),
      subTitle: Text(
        'Do you have a charging point?',
        style: workerServicesSubTitleStyle(),
      ),
      isChecked: false,
    )
  ];
}
