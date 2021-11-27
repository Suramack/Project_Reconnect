import 'package:flutter/material.dart';
import 'package:reconnect/screens/user_screen/insurance/components/text_style.dart';

List<String> _vehilcesType = [
  'two wheeler',
  'four wheeler',
  'three wheeler',
  'heavy vehicle',
];
Future viewAllVehicle(BuildContext context, Size size) => showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(30),
      ),
    ),
    builder: (context) {
      return SizedBox(
        height: 300,
        width: 300,
        child: Wrap(
            alignment: WrapAlignment.start,
            direction: Axis.vertical,
            children: [
              SizedBox(
                width: size.width,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) => Align(
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            colors: [
                              Colors.blueAccent,
                              Colors.blue.shade200,
                            ],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft),
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                          maximumSize: MaterialStateProperty.all(
                            const Size(100, 100),
                          ),
                          minimumSize: MaterialStateProperty.all(
                            const Size(100, 100),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          _vehilcesType[index],
                          style: allVehicleTextButtonTextStyle(),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
      );
    });
