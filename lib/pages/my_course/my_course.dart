import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:humaira/color/color.dart';
import 'package:shimmer/shimmer.dart';

class MyCourse extends StatefulWidget {
  const MyCourse({Key? key}) : super(key: key);

  @override
  _MyCourseState createState() => _MyCourseState();
}

class _MyCourseState extends State<MyCourse> {
  bool _hiya = false;

  void completeOpen() {
    setState(() {
      _hiya = !_hiya;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: warnaSekunder(),
      body: SingleChildScrollView(
        child: Column(children: [
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
                          Text("My Course",
                              style: TextStyle(
                                  fontSize: 24, color: warnaSekunder())),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                TextField(
                    decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  labelText: 'Cari',
                  fillColor: warnaPrimerOpacity(),
                  filled: true,
                  contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Colors.blue, width: 1.0)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Colors.white, width: 1.0)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Colors.red, width: 1.0)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Colors.red, width: 1.0)),
                )),
              ]),
            ),
          ),
          SizedBox(height: 25.0),
          ongoingOrComplete(),
        ]),
      ),
    );
  }

  Widget ongoingOrComplete() {
    if (_hiya == true) {
      return Column(children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: warnaAbu(),
          ),
          width: 335.0,
          height: 50.0,
          child: Row(
            children: [
              Flexible(
                fit: FlexFit.tight,
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        completeOpen();
                      },
                      child: Text(
                        "          Ongoing          ",
                        style: TextStyle(fontSize: 16, color: warnaPrimer()),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: warnaPrimer(),
                  ),
                  child: Text("Complete",
                      style: TextStyle(fontSize: 16, color: warnaSekunder())),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20.0),
        Container(
          padding: EdgeInsets.only(
            left: 20.0,
            right: 20.0,
          ),
          width: 330.0,
          height: 100.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: warnaSekunder(),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 3,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Row(children: [
            Container(
                width: 70.0,
                height: 70.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage('2.jpg'), fit: BoxFit.fill))),
            SizedBox(
              width: 10,
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Design Thingking Fundam...",
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(children: [
                    Icon(Icons.person_outline),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Fikky Mihtakhul Huda",
                      style: TextStyle(fontSize: 10),
                    ),
                  ]),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Rp 100.000",
                    style: TextStyle(fontSize: 14, color: warnaPrimer()),
                  ),
                ])
          ]),
        ),
        SizedBox(height: 20.0),
        Container(
          padding: EdgeInsets.only(
            left: 20.0,
            right: 20.0,
          ),
          width: 330.0,
          height: 100.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: warnaSekunder(),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 3,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Row(children: [
            Container(
                width: 70.0,
                height: 70.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage('2.jpg'), fit: BoxFit.fill))),
            SizedBox(
              width: 10,
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Design Thingking Fundam...",
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(children: [
                    Icon(Icons.person_outline),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Fikky Mihtakhul Huda",
                      style: TextStyle(fontSize: 10),
                    ),
                  ]),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Rp 100.000",
                    style: TextStyle(fontSize: 14, color: warnaPrimer()),
                  ),
                ])
          ]),
        ),
      ]);
    } else if (_hiya == false) {
      return Column(children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: warnaAbu(),
          ),
          width: 335.0,
          height: 50.0,
          child: Row(
            children: [
              Flexible(
                fit: FlexFit.tight,
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: warnaPrimer(),
                  ),
                  child: Text("Ongoing",
                      style: TextStyle(fontSize: 16, color: warnaSekunder())),
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        completeOpen();
                      },
                      child: Text(
                        "          Complete          ",
                        style: TextStyle(fontSize: 16, color: warnaPrimer()),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20.0),
        Container(
          padding: EdgeInsets.only(
            left: 20.0,
            right: 20.0,
          ),
          width: 330.0,
          height: 100.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: warnaSekunder(),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 3,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Row(children: [
            Container(
                width: 70.0,
                height: 70.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage('1.png'), fit: BoxFit.fill))),
            SizedBox(
              width: 10,
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Design Thingking Fundam...",
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(children: [
                    Icon(Icons.person_outline),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Fikky Mihtakhul Huda",
                      style: TextStyle(fontSize: 10),
                    ),
                  ]),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Rp 200.000",
                    style: TextStyle(fontSize: 14, color: warnaPrimer()),
                  ),
                ])
          ]),
        ),
        SizedBox(height: 20.0),
        Container(
          padding: EdgeInsets.only(
            left: 20.0,
            right: 20.0,
          ),
          width: 330.0,
          height: 100.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: warnaSekunder(),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 3,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Row(children: [
            Container(
                width: 70.0,
                height: 70.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage('1.png'), fit: BoxFit.fill))),
            SizedBox(
              width: 10,
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Design Thingking Fundam...",
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(children: [
                    Icon(Icons.person_outline),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Fikky Mihtakhul Huda",
                      style: TextStyle(fontSize: 10),
                    ),
                  ]),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Rp 200.000",
                    style: TextStyle(fontSize: 14, color: warnaPrimer()),
                  ),
                ])
          ]),
        ),
      ]);
    }
    return Text("Error");
  }
}
