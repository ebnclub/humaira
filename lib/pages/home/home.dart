import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:humaira/fetch/user/search_by_id.dart';

import 'package:humaira/color/color.dart';
import 'package:humaira/pages/login/login.dart';
import 'package:humaira/pages/navigation/bottom_navigator.dart';
import 'package:shimmer/shimmer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<Konsumen> futureKonsumen;

  @override
  void initState() {
    super.initState();
    futureKonsumen = fetchKonsumenById();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: warnaSekunder(),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 250.0,
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
                          Row(
                            children: [
                              FutureBuilder<Konsumen>(
                                  future: futureKonsumen,
                                  builder: (context, snapshot) {
                                    if (snapshot.hasData) {
                                      return Text(
                                          "Halo, " + snapshot.data!.username,
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: warnaSekunder()));
                                    } else if (snapshot.hasError) {
                                      return OutlinedButton(
                                        child: Text(
                                          "Refresh",
                                          style: TextStyle(
                                            fontSize: 13,
                                            letterSpacing: 1,
                                            color: warnaSekunder(),
                                          ),
                                        ),
                                        style: OutlinedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20))),
                                        onPressed: () {
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      BottomNavgigator()));
                                        },
                                      );
                                    }
                                    return Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        child: Center(
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Shimmer.fromColors(
                                                  child:
                                                      CircularProgressIndicator(),
                                                  baseColor: warnaSekunder(),
                                                  highlightColor:
                                                      warnaSekunder(),
                                                ),
                                              ]),
                                        ));
                                  }),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text("Lets Start Learning",
                              style: TextStyle(
                                  fontSize: 20, color: warnaSekunder())),
                        ],
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(height: 70),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                color: warnaPrimerDark(),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.shopping_cart_rounded),
                                color: warnaSekunder(),
                                iconSize: 20.0,
                              ),
                            )
                          ]),
                    ),
                  ],
                ),
                SizedBox(height: 25),
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
          Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 2,
                    child: Text("Populer", style: TextStyle(fontSize: 18)),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: TextButton(
                        onPressed: () {},
                        child: Text("Lihat Semua",
                            style: TextStyle(fontSize: 16))),
                  ),
                ],
              )),
          Container(
            height: 270,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              padding: EdgeInsets.only(bottom: 25.0, left: 20.0, right: 20.0),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20.0),
                  width: 225,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: warnaSekunder(),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 10,
                        offset: Offset(0, 10),
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                        width: 250,
                        height: 145,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 1,
                              child: Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: warnaSekunder(),
                                  ),
                                  child: Row(children: [
                                    Icon(Icons.star, color: Colors.amber),
                                    Text("4.8"),
                                  ])),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 1,
                              child: Container(
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: warnaSekunder(),
                                ),
                                child: Icon(Icons.favorite, color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                                image: AssetImage('2.jpg'), fit: BoxFit.fill)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.0, top: 5.0),
                        child: Text(
                          "Design Thingking Fundamental",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.0, top: 10.0),
                        child: Row(
                          children: [
                            Icon(Icons.person_outline_outlined),
                            Text("Fikky Miftakhul Huda")
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.0, top: 10.0),
                        child: Row(
                          children: [
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: warnaSekunder(),
                                ),
                                child: Text("Rp. 200.000"),
                              ),
                            ),
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: warnaSekunder(),
                                ),
                                child: Text("Best Seller"),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 225,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: warnaPrimer(),
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 2,
                    child: Text("Kategori", style: TextStyle(fontSize: 18)),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: TextButton(
                        onPressed: () {},
                        child: Text("Lihat Semua",
                            style: TextStyle(fontSize: 16))),
                  ),
                ],
              )),
          Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Wrap(
                // runAlignment: WrapAlignment.start,
                // crossAxisAlignment: WrapCrossAlignment.start,
                spacing: 8.0,
                runSpacing: 10.0,
                children: [
                  Container(
                    height: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: warnaSekunder(),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 3,
                          offset: Offset(5, 5),
                        )
                      ],
                    ),
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.laptop_windows_sharp, color: Colors.black),
                      label: Text("Software", style: TextStyle(color: Colors.black)),
                      style: ButtonStyle(
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Container(
                    height: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: warnaSekunder(),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 3,
                          offset: Offset(5, 5),
                        )
                      ],
                    ),
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.hardware, color: Colors.black),
                      label: Text("Computer Hardware", style: TextStyle(color: Colors.black)),
                      style: ButtonStyle(
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Container(
                    height: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: warnaSekunder(),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 3,
                          offset: Offset(5, 5),
                        )
                      ],
                    ),
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.network_check_rounded, color: Colors.black),
                      label: Text("Computer network", style: TextStyle(color: Colors.black)),
                      style: ButtonStyle(
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Container(
                    height: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: warnaSekunder(),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 3,
                          offset: Offset(5, 5),
                        )
                      ],
                    ),
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.laptop_windows_sharp, color: Colors.black),
                      label: Text("Software", style: TextStyle(color: Colors.black)),
                      style: ButtonStyle(
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Container(
                    height: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: warnaSekunder(),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 3,
                          offset: Offset(5, 5),
                        )
                      ],
                    ),
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.hardware, color: Colors.black),
                      label: Text("Computer Hardware", style: TextStyle(color: Colors.black)),
                      style: ButtonStyle(
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Container(
                    height: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: warnaSekunder(),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 3,
                          offset: Offset(5, 5),
                        )
                      ],
                    ),
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.network_check_rounded, color: Colors.black),
                      label: Text("Computer network", style: TextStyle(color: Colors.black)),
                      style: ButtonStyle(
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  SizedBox(height: 20,)
                ],
              ))
        ]),
      ),
    );
  }
}
