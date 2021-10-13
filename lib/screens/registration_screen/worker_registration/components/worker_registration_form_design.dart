import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reconnect/screens/registration_screen/worker_registration/components/worker_text_and_style.dart';

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
  bool isTermsAndCondition = false;
  List<EvServiceCheckBoxList> checkBoxList = EvServiceCheckBoxList.getList;
  List<OtherServiceCheckBoxList> otherServicesCheckBoxList =
      OtherServiceCheckBoxList.getList;
  void isCheck(bool value, int index) {
    setState(() {
      checkBoxList[index].isChecked = value;
    });
  }

  void isCheckOtherServices(bool value, int index) {
    setState(() {
      otherServicesCheckBoxList[index].isChecked = value;
    });
  }

  void isTermsAndConditionStatus(bool value) {
    setState(() {
      isTermsAndCondition = value;
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
        child: workerFormField(),
      ),
    );
  }

  Column workerFormField() {
    return Column(children: [
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
      evServicesTitle(),
      evServicesList(),
      line(),
      otherServicesTitle(),
      otherServicesList(),
      line(),
      uploadDocumentButtton(),
      termsAndConditionCheckBox(),
      workerRegistrationButton()
    ]);
  }

  Container workerRegistrationButton() {
    return Container(
      width: 240,
      padding: const EdgeInsets.only(top: 8),
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all<double>(1),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
        ),
        onPressed: () => null,
        child: workerSignInButtonText(),
      ),
    );
  }

  Container termsAndConditionCheckBox() {
    return Container(
      padding: const EdgeInsets.only(top: 8, left: 20, right: 20),
      child: CheckboxListTile(
          tileColor: Colors.green,
          // dense: true,
          controlAffinity: ListTileControlAffinity.leading,
          activeColor: Colors.transparent,
          checkColor: Colors.green,
          title: termsAndConditionsTitle(),
          subtitle: termsAndConditionsSubtitle(),
          value: isTermsAndCondition,
          onChanged: (value) => isTermsAndConditionStatus(value!)),
    );
  }

  Container uploadDocumentButtton() {
    return Container(
      padding: const EdgeInsets.only(top: 8),
      child: OutlinedButton(
        style: ButtonStyle(
          maximumSize: MaterialStateProperty.all<Size>(const Size(240, 100)),
          side: MaterialStateProperty.all<BorderSide>(
              const BorderSide(width: 1.5, color: Colors.green)),
          foregroundColor: MaterialStateProperty.all<Color>(
            const Color(0xff025dbf),
          ),
        ),
        onPressed: () => null,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              FontAwesomeIcons.cloudUploadAlt,
              size: 20,
              color: Color(0xff453e3d),
            ),
            const SizedBox(
              width: 20,
            ),
            workerUploadDocumentButtonText(),
          ],
        ),
      ),
    );
  }

  Container otherServicesList() {
    return Container(
      height: widget.size.height * .13,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: otherServicesCheckBoxList.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) => CheckboxListTile(
          onChanged: (value) => isCheckOtherServices(value!, index),
          value: otherServicesCheckBoxList[index].isChecked,
          title: otherServicesCheckBoxList[index].title,
          subtitle: otherServicesCheckBoxList[index].subtitle,
          activeColor: Colors.transparent,
          checkColor: Colors.green,
          controlAffinity: ListTileControlAffinity.leading,
          contentPadding: const EdgeInsets.only(top: 15, right: 9),
        ),
      ),
    );
  }

  Container otherServicesTitle() {
    return Container(
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
            'Other Services',
            style: TextStyle(color: Colors.grey.shade500, fontSize: 16),
          ),
        ],
      ),
    );
  }

  Container evServicesTitle() {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 25,
      alignment: Alignment.bottomLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            FontAwesomeIcons.carBattery,
            size: 22,
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
    );
  }

//EV Services
  Container evServicesList() {
    return Container(
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

//EvServiceCheckBoxList class
class EvServiceCheckBoxList {
  int id;
  Text? title;
  Text? subTitle;
  bool? isChecked;

  EvServiceCheckBoxList(
      {this.title, this.subTitle, this.isChecked, required this.id});
  static List<EvServiceCheckBoxList> getList = [
    EvServiceCheckBoxList(
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
    EvServiceCheckBoxList(
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
    EvServiceCheckBoxList(
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
    EvServiceCheckBoxList(
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

//OtherServiceCheckBoxList class
class OtherServiceCheckBoxList {
  int? id;
  Text? title;
  Text? subtitle;
  bool? isChecked;
  OtherServiceCheckBoxList(
      {this.title, this.subtitle, this.isChecked, this.id});
  static List<OtherServiceCheckBoxList> getList = [
    OtherServiceCheckBoxList(
        id: 1,
        title: Text(
          'Medical Emergency',
          style: workerServicesTitleStyle(),
        ),
        subtitle: Text(
          'Are you providing a first aid box?',
          style: workerServicesSubTitleStyle(),
        ),
        isChecked: false),
    OtherServiceCheckBoxList(
        id: 2,
        title: Text(
          'Repair',
          style: workerServicesTitleStyle(),
        ),
        subtitle: Text(
          'Are you a mechanic?',
          style: workerServicesSubTitleStyle(),
        ),
        isChecked: false),
  ];
}
