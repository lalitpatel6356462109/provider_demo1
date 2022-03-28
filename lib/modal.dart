

import 'package:flutter/material.dart';

class myclass extends ChangeNotifier
{

  TextEditingController t = TextEditingController();
  String str = "";

  void get(String s) {
     str  = s;
    notifyListeners();
  }
}