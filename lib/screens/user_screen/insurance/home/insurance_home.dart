import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/utils.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reconnect/screens/user_screen/insurance/components/text_style.dart';
import 'package:reconnect/screens/user_screen/insurance/home/view_all_vehicles.dart';

class Insurance extends StatefulWidget {
  const Insurance({Key? key}) : super(key: key);

  @override
  _InsuranceState createState() => _InsuranceState();
}

class _InsuranceState extends State<Insurance> {
  final TextEditingController _carNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // CarouselController _carouselController = CarouselController();
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CarouselSlider(
          // carouselController: _carouselController,
          items: [
            // Image.asset('assets/ad1.png'),
            Image.asset('assets/ad3.png'),
            Image.asset('assets/ad3.png'),
          ],
          options: CarouselOptions(
            autoPlay: true,
            height: 170,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: size.width * 0.95,
            height: size.width * 0.95,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.lightBlue.shade200,
                  Colors.blue.shade300,
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 5,
                  spreadRadius: 5,
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Text(
                    'connecting by insurance',
                    style: headText(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Car number',
                          style: carStyle(),
                        ),
                        TextField(
                          controller: _carNumber,
                          textCapitalization: TextCapitalization.characters,
                          style: inputTextStyle(),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 40,
                              horizontal: 10,
                            ),
                            hintText: 'XX12XX3456',
                            hintStyle: hintStyle(),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(.4),
                      minimumSize:
                          MaterialStateProperty.all(const Size(150, 50)),
                      maximumSize:
                          MaterialStateProperty.all(const Size(150, 50)),
                      backgroundColor: MaterialStateProperty.all(
                          Colors.greenAccent.shade700),
                    ),
                    onPressed: () {},
                    child: Text(
                      'add',
                      style: buttonTextStyle(),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          width: size.width * 0.95,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.grey.shade300,
              width: 1,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () => null,
                child: Text(
                  'two wheeler',
                  style: textButtonTextStyle(),
                ),
              ),
              TextButton(
                onPressed: () => null,
                child: Text(
                  'four wheeler',
                  style: textButtonTextStyle(),
                ),
              ),
              IconButton(
                onPressed: () => viewAllVehicle(context, size),
                icon: Column(
                  children: const [
                    Icon(
                      FontAwesomeIcons.solidArrowAltCircleRight,
                      color: Colors.blueAccent,
                      size: 26,
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
