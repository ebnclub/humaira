import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:humaira/color/color.dart';
import 'package:humaira/pages/login/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        Stack(
          children: [
            Container(
              height: 200.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                color: warnaPrimer(),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                ),
                child: Column(children: [
                  Row(
                    children: [
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 70),
                            Text("My Profile",
                                style: TextStyle(
                                    fontSize: 24, color: warnaSekunder())),
                          ],
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(
                      top: 125.0,
                    ),
                  width: 150,
                  height: 150,
                  child: CircleAvatar(
                      radius: 20, backgroundImage: AssetImage('2.jpg'))),
            )
          ],
        ),
        Center(
          child: OutlinedButton(
            onPressed: () async {
              SharedPreferences pref = await SharedPreferences.getInstance();
              await pref.clear();
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => const Login2Page()),
                  (route) => false);
            },
            child: const Text(
              "LOGOUT",
              style: TextStyle(
                fontSize: 15,
                letterSpacing: 2,
                color: Colors.black,
              ),
            ),
            style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
        ),
      ],
    )));
  }
}
