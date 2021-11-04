import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'package:humaira/pages/home/home.dart';

void checkLogin(context) async {
    //HERE WE CHECH IF USER ALREDY LOGIN OR CREDENTIAL AVAILABLE OR NOT
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? val = pref.getString("id");
    if (val != null) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => HomePage()),
          (route) => false);
    }
  }