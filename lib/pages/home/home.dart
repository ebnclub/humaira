import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:humaira/pages/home/isi_kategori.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:humaira/color/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    getFromSharedPreferences();
  }

  String username = "";

  void getFromSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      username = prefs.getString("username")!;
    });
  }

  void _alertnya() {
    showAnimatedDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Column(children: [
          const SizedBox(height: 127),
          Dialog(
            backgroundColor: Colors.transparent,
            insetPadding:
                const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 127,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: warnaSekunder(),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Flexible(
                          fit: FlexFit.tight,
                          flex: 1,
                          child: Container(
                            padding: const EdgeInsets.all(30),
                            child: const Text('Your Item',
                                style: TextStyle(fontSize: 20)),
                          )),
                      Flexible(
                          fit: FlexFit.tight,
                          flex: 1,
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: TextButton.icon(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: const Icon(Icons.close),
                              label: const Text(''),
                            ),
                          )),
                    ],
                  ),
                  SizedBox(
                      height: 400,
                      child: SingleChildScrollView(
                        child: Column(children: [
                          Container(
                              padding: const EdgeInsets.only(
                                left: 20.0,
                                right: 20.0,
                              ),
                              width: 330.0,
                              height: 150.0,
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                color: warnaSekunder(),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    blurRadius: 3,
                                    offset: const Offset(0, 5),
                                  ),
                                ],
                              ),
                              child: Column(children: [
                                Row(children: [
                                  Container(
                                      width: 70.0,
                                      height: 70.0,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/1.png'),
                                              fit: BoxFit.fill))),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Design Thingking Fundam...",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Row(children: const [
                                          Icon(Icons.person_outline),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Fikky Mihtakhul Huda",
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ]),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          "Rp 200.000",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: warnaPrimer()),
                                        ),
                                      ])
                                ]),
                                Row(children: [
                                  Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: TextButton(
                                        onPressed: () {},
                                        child: const Text('Remove',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.red)),
                                      )),
                                  Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text('Move to wishlist',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: warnaPrimer())),
                                      )),
                                ])
                              ])),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                              padding: const EdgeInsets.only(
                                left: 20.0,
                                right: 20.0,
                              ),
                              width: 330.0,
                              height: 150.0,
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                color: warnaSekunder(),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    blurRadius: 3,
                                    offset: const Offset(0, 5),
                                  ),
                                ],
                              ),
                              child: Column(children: [
                                Row(children: [
                                  Container(
                                      width: 70.0,
                                      height: 70.0,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/1.png'),
                                              fit: BoxFit.fill))),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Design Thingking Fundam...",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Row(children: const [
                                          Icon(Icons.person_outline),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Fikky Mihtakhul Huda",
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ]),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          "Rp 200.000",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: warnaPrimer()),
                                        ),
                                      ])
                                ]),
                                Row(children: [
                                  Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: TextButton(
                                        onPressed: () {},
                                        child: const Text('Remove',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.red)),
                                      )),
                                  Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text('Move to wishlist',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: warnaPrimer())),
                                      )),
                                ])
                              ])),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                              padding: const EdgeInsets.only(
                                left: 20.0,
                                right: 20.0,
                              ),
                              width: 330.0,
                              height: 150.0,
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                color: warnaSekunder(),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    blurRadius: 3,
                                    offset: const Offset(0, 5),
                                  ),
                                ],
                              ),
                              child: Column(children: [
                                Row(children: [
                                  Container(
                                      width: 70.0,
                                      height: 70.0,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/1.png'),
                                              fit: BoxFit.fill))),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Design Thingking Fundam...",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Row(children: const [
                                          Icon(Icons.person_outline),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Fikky Mihtakhul Huda",
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ]),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          "Rp 200.000",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: warnaPrimer()),
                                        ),
                                      ])
                                ]),
                                Row(children: [
                                  Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: TextButton(
                                        onPressed: () {},
                                        child: const Text('Remove',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.red)),
                                      )),
                                  Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text('Move to wishlist',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: warnaPrimer())),
                                      )),
                                ])
                              ])),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                              padding: const EdgeInsets.only(
                                left: 20.0,
                                right: 20.0,
                              ),
                              width: 330.0,
                              height: 150.0,
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                color: warnaSekunder(),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    blurRadius: 3,
                                    offset: const Offset(0, 5),
                                  ),
                                ],
                              ),
                              child: Column(children: [
                                Row(children: [
                                  Container(
                                      width: 70.0,
                                      height: 70.0,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/1.png'),
                                              fit: BoxFit.fill))),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Design Thingking Fundam...",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Row(children: const [
                                          Icon(Icons.person_outline),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Fikky Mihtakhul Huda",
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ]),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          "Rp 200.000",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: warnaPrimer()),
                                        ),
                                      ])
                                ]),
                                Row(children: [
                                  Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: TextButton(
                                        onPressed: () {},
                                        child: const Text('Remove',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.red)),
                                      )),
                                  Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text('Move to wishlist',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: warnaPrimer())),
                                      )),
                                ])
                              ])),
                          const SizedBox(
                            height: 20,
                          ),
                        ]),
                      )),
                  Container(
                      padding: const EdgeInsets.all(20),
                      height: 171,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 3,
                            offset: const Offset(0, -5),
                          ),
                        ],
                        color: warnaSekunder(),
                      ),
                      child: Column(
                        children: [
                          Row(children: [
                            const Flexible(
                                fit: FlexFit.tight,
                                flex: 1,
                                child: Text("Voucher")),
                            Flexible(
                                fit: FlexFit.tight,
                                flex: 1,
                                child: Container(
                                  width: 150,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    color: warnaPrimerOpacity(),
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text("Siforel",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: warnaPrimer())),
                                  ),
                                )),
                          ]),
                          const SizedBox(height: 30),
                          Row(children: [
                            Flexible(
                                fit: FlexFit.tight,
                                flex: 1,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text("Total"),
                                      Text("Rp. 400.000",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: warnaPrimer())),
                                    ])),
                            Flexible(
                                fit: FlexFit.tight,
                                flex: 1,
                                child: Container(
                                  width: 160,
                                  height: 55,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                    color: warnaPrimer(),
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text("Checkout",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: warnaSekunder())),
                                  ),
                                )),
                          ])
                        ],
                      ))
                ],
              ),
            ),
          ),
        ]);
      },
      animationType: DialogTransitionType.slideFromBottom,
      curve: Curves.fastOutSlowIn,
      duration: const Duration(milliseconds: 500),
    );
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
                          Row(
                            children: [
                              Text("Halo, " + username + " 👋🏻",
                                  style: TextStyle(
                                      fontSize: 24, color: warnaSekunder())),
                            ],
                          ),
                          const SizedBox(height: 10),
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
                            const SizedBox(height: 70),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                                color: warnaPrimerDark(),
                              ),
                              child: IconButton(
                                onPressed: () {
                                  _alertnya();
                                },
                                icon: const Icon(Icons.shopping_cart_rounded),
                                color: warnaSekunder(),
                                iconSize: 20.0,
                              ),
                            )
                          ]),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                TextField(
                    decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  labelText: 'Cari',
                  fillColor: warnaPrimerOpacity(),
                  filled: true,
                  contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 1.0)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 1.0)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide:
                          const BorderSide(color: Colors.red, width: 1.0)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide:
                          const BorderSide(color: Colors.red, width: 1.0)),
                )),
              ]),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                children: [
                  const Flexible(
                    fit: FlexFit.tight,
                    flex: 2,
                    child: Text("Populer", style: TextStyle(fontSize: 18)),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: TextButton(
                        onPressed: () {},
                        child: const Text("Lihat Semua",
                            style: TextStyle(fontSize: 16))),
                  ),
                ],
              )),
          SizedBox(
            height: 270,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              padding:
                  const EdgeInsets.only(bottom: 25.0, left: 20.0, right: 20.0),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 20.0),
                  width: 225,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: warnaSekunder(),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 10,
                        offset: const Offset(0, 10),
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 10.0),
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
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    color: warnaSekunder(),
                                  ),
                                  child: Row(children: const [
                                    Icon(Icons.star, color: Colors.amber),
                                    Text("4.8"),
                                  ])),
                            ),
                            const SizedBox(
                              width: 100,
                            ),
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 1,
                              child: Container(
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  color: warnaSekunder(),
                                ),
                                child: const Icon(Icons.favorite,
                                    color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                                image: AssetImage('assets/images/2.jpg'),
                                fit: BoxFit.fill)),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 5.0, top: 5.0),
                        child: Text(
                          "Design Thingking Fundamental",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0, top: 10.0),
                        child: Row(
                          children: const [
                            Icon(Icons.person_outline_outlined),
                            Text("Fikky Miftakhul Huda")
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0, top: 10.0),
                        child: Row(
                          children: [
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  color: warnaSekunder(),
                                ),
                                child: const Text("Rp. 200.000"),
                              ),
                            ),
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  color: warnaSekunder(),
                                ),
                                child: const Text("Best Seller"),
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
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                children: [
                  const Flexible(
                    fit: FlexFit.tight,
                    flex: 2,
                    child: Text("Kategori", style: TextStyle(fontSize: 18)),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: TextButton(
                        onPressed: () {},
                        child: const Text("Lihat Semua",
                            style: TextStyle(fontSize: 16))),
                  ),
                ],
              )),
          Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Wrap(
                // runAlignment: WrapAlignment.start,
                // crossAxisAlignment: WrapCrossAlignment.start,
                spacing: 8.0,
                runSpacing: 10.0,
                children: [
                  Container(
                    height: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      color: warnaSekunder(),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 3,
                          offset: const Offset(5, 5),
                        )
                      ],
                    ),
                    child: TextButton.icon(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const IsiKategori()));
                      },
                      icon: const Icon(Icons.laptop_windows_sharp,
                          color: Colors.black),
                      label: const Text("Software",
                          style: TextStyle(color: Colors.black)),
                      style: const ButtonStyle(
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Container(
                    height: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      color: warnaSekunder(),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 3,
                          offset: const Offset(5, 5),
                        )
                      ],
                    ),
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.hardware, color: Colors.black),
                      label: const Text("Computer Hardware",
                          style: TextStyle(color: Colors.black)),
                      style: const ButtonStyle(
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Container(
                    height: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      color: warnaSekunder(),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 3,
                          offset: const Offset(5, 5),
                        )
                      ],
                    ),
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.network_check_rounded,
                          color: Colors.black),
                      label: const Text("Computer network",
                          style: TextStyle(color: Colors.black)),
                      style: const ButtonStyle(
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Container(
                    height: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      color: warnaSekunder(),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 3,
                          offset: const Offset(5, 5),
                        )
                      ],
                    ),
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.laptop_windows_sharp,
                          color: Colors.black),
                      label: const Text("Software",
                          style: TextStyle(color: Colors.black)),
                      style: const ButtonStyle(
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Container(
                    height: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      color: warnaSekunder(),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 3,
                          offset: const Offset(5, 5),
                        )
                      ],
                    ),
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.hardware, color: Colors.black),
                      label: const Text("Computer Hardware",
                          style: TextStyle(color: Colors.black)),
                      style: const ButtonStyle(
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Container(
                    height: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      color: warnaSekunder(),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 3,
                          offset: const Offset(5, 5),
                        )
                      ],
                    ),
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.network_check_rounded,
                          color: Colors.black),
                      label: const Text("Computer network",
                          style: TextStyle(color: Colors.black)),
                      style: const ButtonStyle(
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ))
        ]),
      ),
    );
  }
}
