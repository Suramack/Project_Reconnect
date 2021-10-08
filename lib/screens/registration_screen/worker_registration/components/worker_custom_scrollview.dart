import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reconnect/screens/registration_screen/worker_registration/components/worker_registration_form_design.dart';

CustomScrollView workerBottomSheetDesign(
  ScrollController scrollControll,
  BuildContext context,
  Size size,
) {
  return CustomScrollView(
    controller: scrollControll,
    slivers: [
      SliverAppBar(
        pinned: true,
        shadowColor: Colors.green,
        elevation: 1,
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey.shade700,
        automaticallyImplyLeading: false,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          side: BorderSide(
            color: Colors.grey.shade200,
          ),
        ),
        title: Column(
          children: [
            Container(
              width: 45,
              height: 4,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: const BorderRadius.all(Radius.circular(100))),
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 30.0, left: 90),
                  child: Text(
                    'Connect with reconnect',
                    style: TextStyle(fontFamily: 'Barlow'),
                  ),
                ),
                IconButton(
                  tooltip: 'Already registered? Please Login',
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    FontAwesomeIcons.arrowAltCircleDown,
                    color: Colors.green,
                    size: 30,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      SliverFillRemaining(
        fillOverscroll: true,
        hasScrollBody: false,
        child: WorkerForm(size: size),
      ),
    ],
  );
}
