import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:humaira/color/color.dart';

class EbnClub extends StatefulWidget {
  const EbnClub({Key? key}) : super(key: key);

  @override
  _EbnClubState createState() => _EbnClubState();
}

class _EbnClubState extends State<EbnClub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 350.0,
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
                              Text("EBN CLUB",
                                  style: TextStyle(
                                      fontSize: 24, color: warnaSekunder())),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                        width: 100,
                        height: 100,
                        child: CircleAvatar(
                            radius: 20, backgroundImage: AssetImage('2.jpg'))),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Aldi Dwi Cahyono',
                        style: TextStyle(fontSize: 20, color: warnaSekunder())),
                    Text('aldidwicahyono64@gmail.com',
                        style: TextStyle(fontSize: 14, color: warnaSekunder())),
                  ]),
                ),
              ),
              Center(
                child: Container(
                    margin: EdgeInsets.only(
                      top: 300.0,
                    ),
                    width: 300,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: warnaPrimer()),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: warnaSekunder(),
                    ),
                    child: Row(
                      children: [
                        Flexible(
                            fit: FlexFit.tight,
                            flex: 1,
                            child: TextButton(
                              onPressed: () {},
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.attach_money, color: Colors.black),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text("Bonus",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.black)),
                                ],
                              ),
                            )),
                        Flexible(
                            fit: FlexFit.tight,
                            flex: 1,
                            child: TextButton(
                              onPressed: () {},
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.pending_actions,
                                      color: Colors.black),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text("Pending",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.black)),
                                ],
                              ),
                            )),
                        Flexible(
                            fit: FlexFit.tight,
                            flex: 1,
                            child: TextButton(
                              onPressed: () {},
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.miscellaneous_services,
                                      color: Colors.black),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text("Auto Maintenance",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.black)),
                                ],
                              ),
                            )),
                      ],
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
            child: Column(children: [
              TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(Icons.swap_horizontal_circle_outlined, color: Colors.black),
                      SizedBox(width: 10.0,),
                      Text("Direct Sponsor",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14, color: Colors.black)),
                    ],
                  ))
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
            child: Column(children: [
              TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(Icons.attach_money, color: Colors.black),
                      SizedBox(width: 10.0,),
                      Text("Referral bonus",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14, color: Colors.black)),
                    ],
                  ))
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
            child: Column(children: [
              TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(Icons.add_task_outlined, color: Colors.black),
                      SizedBox(width: 10.0,),
                      Text("Statement bonus",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14, color: Colors.black)),
                    ],
                  ))
            ]),
          ),
        ],
      ),
    ));
  }
}
