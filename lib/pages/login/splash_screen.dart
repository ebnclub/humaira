import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:humaira/color/color.dart';

import 'package:humaira/pages/login/login.dart';
import 'package:page_transition/page_transition.dart';

import 'login.dart';

class SplashScreen extends StatefulWidget {
  final String title;
  const SplashScreen({Key? key, required this.title}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startSplashScreen() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.of(context).pushAndRemoveUntil(PageTransition(type: PageTransitionType.fade, child: const Login2Page()), (route) => false);
    });
  }

  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: warnaPrimer(),
        body: Center(
          child: Image.asset(
            'assets/logo_putih.png',
            width: 200.0,
            height: 200.0,
          ),
        ));
  }
}
