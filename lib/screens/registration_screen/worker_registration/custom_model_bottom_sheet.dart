import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reconnect/screens/registration_screen/worker_registration/components/worker_custom_scrollview.dart';

bottomsheet(context) {
  Size size = MediaQuery.of(context).size;
  return showModalBottomSheet(
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    context: context,
    builder: (BuildContext context) => DraggableScrollableSheet(
      initialChildSize: .6,
      minChildSize: .2,
      maxChildSize: .9,
      builder: (context, scrollControll) => Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: workerBottomSheetDesign(scrollControll, context, size),
      ),
    ),
  );
}
