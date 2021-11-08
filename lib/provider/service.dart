import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TestService with ChangeNotifier {
  int _value = 0;
  int get value => _value;
  void valueChange(int val) {
    _value = val;
    notifyListeners();
  }
}
