import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:humaira/color/color.dart';

import 'package:humaira/fetch/automainten/total.dart';
import 'package:humaira/fetch/bonus/total.dart';
import 'package:humaira/fetch/pending/total.dart';

import 'package:humaira/pages/ebc-com/direct_sponsor.dart';
import 'package:humaira/pages/ebc-com/referal_bonus.dart';
import 'package:humaira/pages/ebc-com/statement_bonus.dart';
import 'package:humaira/pages/navigation/bottom_navigator.dart';

class EbnClub extends StatefulWidget {
  const EbnClub({Key? key}) : super(key: key);

  @override
  _EbnClubState createState() => _EbnClubState();
}

class _EbnClubState extends State<EbnClub> {
  late Future<TotalBonus> futureTotalBonus;
  late Future<TotalPending> futureTotalPending;
  late Future<TotalAutomainten> futureTotalAutomainten;

  @override
  void initState() {
    super.initState();
    futureTotalBonus = fetchTotalBonus();
    futureTotalPending = fetchTotalPending();
    futureTotalAutomainten = fetchTotalAutomainten();
  }

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
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  color: warnaPrimer(),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
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
                              const SizedBox(height: 70),
                              Text("EBN CLUB",
                                  style: TextStyle(
                                      fontSize: 24, color: warnaSekunder())),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const SizedBox(
                        width: 100,
                        height: 100,
                        child: CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                AssetImage('assets/images/2.jpg'))),
                    const SizedBox(
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
                    margin: const EdgeInsets.only(
                      top: 290.0,
                    ),
                    width: MediaQuery.of(context).size.width*0.85,
                    height: 130,
                    decoration: BoxDecoration(
                      border: Border.all(color: warnaPrimer()),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
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
                                  const Icon(Icons.attach_money,
                                      color: Colors.black),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  const Text("Bonus",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.black)),
                                  FutureBuilder<TotalBonus>(
                                      future: futureTotalBonus,
                                      builder: (context, snapshot) {
                                        if (snapshot.hasData) {
                                          if (snapshot.data!.totalBonus ==
                                              "null") {
                                            return const Text("0");
                                          } else {
                                            return Text(
                                                snapshot.data!.totalBonus);
                                          }
                                        } else if (snapshot.hasError) {
                                          return TextButton(
                                            onPressed: () {
                                              Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          BottomNavgigator(
                                                              menu: 2)));
                                            },
                                            child: const Text(
                                              "Refresh",
                                              style: TextStyle(
                                                fontSize: 13,
                                                letterSpacing: 1,
                                                color: Colors.black,
                                              ),
                                            ),
                                          );
                                        }
                                        return Container();
                                      })
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
                                  const Icon(Icons.pending_actions,
                                      color: Colors.black),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  const Text("Pending",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.black)),
                                  FutureBuilder<TotalPending>(
                                      future: futureTotalPending,
                                      builder: (context, snapshot) {
                                        if (snapshot.hasData) {
                                          if (snapshot.data!.totalPending ==
                                              "null") {
                                            return const Text("0");
                                          } else {
                                            return Text(
                                                snapshot.data!.totalPending);
                                          }
                                        } else if (snapshot.hasError) {
                                          return TextButton(
                                            onPressed: () {
                                              Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          BottomNavgigator(
                                                              menu: 2)));
                                            },
                                            child: const Text(
                                              "Refresh",
                                              style: TextStyle(
                                                fontSize: 13,
                                                letterSpacing: 1,
                                                color: Colors.black,
                                              ),
                                            ),
                                          );
                                        }
                                        return Container();
                                      })
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
                                  const Icon(Icons.miscellaneous_services,
                                      color: Colors.black),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  const Text("Auto Maintenance",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.black)),
                                  FutureBuilder<TotalAutomainten>(
                                      future: futureTotalAutomainten,
                                      builder: (context, snapshot) {
                                        if (snapshot.hasData) {
                                          if (snapshot.data!.totalAutomainten ==
                                              "null") {
                                            return const Text("0");
                                          } else {
                                            return Text(
                                                snapshot.data!.totalAutomainten);
                                          }
                                        } else if (snapshot.hasError) {
                                          return TextButton(
                                            onPressed: () {
                                              Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          BottomNavgigator(
                                                              menu: 2)));
                                            },
                                            child: const Text(
                                              "Refresh",
                                              style: TextStyle(
                                                fontSize: 13,
                                                letterSpacing: 1,
                                                color: Colors.black,
                                              ),
                                            ),
                                          );
                                        }
                                        return Container();
                                      })
                                ],
                              ),
                            )),
                      ],
                    )),
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
            child: Column(children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DirectSponsor()));
                  },
                  child: Row(
                    children: const [
                      Icon(Icons.swap_horizontal_circle_outlined,
                          color: Colors.black),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text("Direct Sponsor",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14, color: Colors.black)),
                    ],
                  ))
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
            child: Column(children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ReferalBonus()));
                  },
                  child: Row(
                    children: const [
                      Icon(Icons.attach_money, color: Colors.black),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text("Referral bonus",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14, color: Colors.black)),
                    ],
                  ))
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
            child: Column(children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const StatementBonus()));
                  },
                  child: Row(
                    children: const [
                      Icon(Icons.add_task_outlined, color: Colors.black),
                      SizedBox(
                        width: 10.0,
                      ),
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
