import 'package:flutter/material.dart';

import 'package:humaira/color/color.dart';
import 'package:humaira/pages/login/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Humaira',
      theme: ThemeData(
        primaryColor: warnaPrimer(),
        accentColor: warnaSekunder(),
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.grey,
      ),
      home: const SplashScreen(title: 'Humaira'),
    );
  }
}