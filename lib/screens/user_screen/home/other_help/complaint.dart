import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

toast() {
  return Fluttertoast.showToast(
    msg: 'processing',
    backgroundColor: Colors.grey.shade700,
  );
}
