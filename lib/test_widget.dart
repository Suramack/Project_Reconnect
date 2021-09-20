import 'package:flutter/material.dart';

class Sstack extends StatefulWidget {
  const Sstack({Key? key}) : super(key: key);

  @override
  _SstackState createState() => _SstackState();
}

class _SstackState extends State<Sstack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: 190,
          height: 100,
          color: Colors.black,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: 150,
                height: 150,
                color: Colors.green,
              ),
              Positioned(
                bottom: -30,
                right: -20,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(color: Colors.blue),
                ),
              ),
              Positioned(
                bottom: -100,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(color: Colors.blue),
                ),
              )
              // Container(
              //   width: 100,
              //   height: 200,
              //   color: Colors.yellow,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
