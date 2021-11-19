import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'package:humaira/color/color.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: warnaPrimer(),
      body: SingleChildScrollView(
        child: AnimatedSize(
          curve: Curves.easeIn,
          duration: Duration(seconds: 1),
          child: Container(
            padding: EdgeInsets.only(left: 50.0, right: 50.0),
            child: Column(
              children: [
                SizedBox(height: 100),
                DelayedDisplay(
                  delay: Duration(seconds: 1),
                  child: Image.asset('assets/logo_putih.png',
                      width: 150.0, height: 150.0),
                ),
                DelayedDisplay(
                  delay: Duration(seconds: 1),
                  child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 10,
                              offset: Offset(0, 10),
                            )
                          ],
                          color: warnaSekunder(),
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: Column(
                        children: [
                          SizedBox(height: 30),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                            child: Text(
                              'Masukan email yang terhubung dengan akun anda',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          DelayedDisplay(
                            delay: Duration(seconds: 1),
                            child: Padding(
                              padding:
                                  EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                              child: TextField(
                                  decoration: InputDecoration(
                                prefixIcon: Icon(Icons.mail),
                                labelText: 'Email',
                                fillColor: warnaPrimerOpacity(),
                                filled: true,
                                contentPadding:
                                    EdgeInsets.fromLTRB(20, 10, 20, 10),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                    borderSide: BorderSide(
                                        color: Colors.blue, width: 1.0)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 1.0)),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                    borderSide: BorderSide(
                                        color: Colors.red, width: 1.0)),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                    borderSide: BorderSide(
                                        color: Colors.red, width: 1.0)),
                              )),
                            ),
                          ),
                          SizedBox(height: 20),
                          DelayedDisplay(
                            delay: Duration(seconds: 1),
                            child: Padding(
                              padding:
                                  EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Stack(
                                  children: <Widget>[
                                    Positioned.fill(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: warnaPrimer(),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.3),
                                              blurRadius: 10,
                                              offset: Offset(0, 10),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      style: TextButton.styleFrom(
                                        padding:
                                            EdgeInsets.fromLTRB(40, 0, 40, 0),
                                        primary: Colors.white,
                                        textStyle: TextStyle(fontSize: 16),
                                      ),
                                      onPressed: () {},
                                      child: Text('KIRIM OTP'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          DelayedDisplay(
                            delay: Duration(seconds: 1),
                            child: Padding(
                              padding:
                                  EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Stack(
                                  children: <Widget>[
                                    Positioned.fill(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: warnaSekunder(),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.3),
                                              blurRadius: 10,
                                              offset: Offset(0, 10),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      style: TextButton.styleFrom(
                                        padding:
                                            EdgeInsets.fromLTRB(40, 0, 40, 0),
                                        primary: warnaPrimer(),
                                        textStyle: TextStyle(fontSize: 16),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text('Login'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
