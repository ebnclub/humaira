import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:humaira/color/color.dart';
import 'package:humaira/fetch/automainten/total.dart';
import 'package:humaira/fetch/bonus/search_by_id.dart';
import 'package:humaira/fetch/bonus/total.dart';
import 'package:humaira/fetch/pending/total.dart';
import 'package:humaira/pages/navigation/bottom_navigator.dart';
import 'package:shimmer/shimmer.dart';

class ReferalBonus extends StatefulWidget {
  const ReferalBonus({Key? key}) : super(key: key);

  @override
  _ReferalBonusState createState() => _ReferalBonusState();
}

class _ReferalBonusState extends State<ReferalBonus> {
  late Future<List<SearchByIdBonus>> futureSearchByIdBonus;
  late Future<TotalBonus> futureTotalBonus;
  late Future<TotalPending> futureTotalPending;
  late Future<TotalAutomainten> futureTotalAutomainten;

  @override
  void initState() {
    super.initState();
    futureSearchByIdBonus = fetchSearchByIdBonus();
    futureTotalBonus = fetchTotalBonus();
    futureTotalPending = fetchTotalPending();
    futureTotalAutomainten = fetchTotalAutomainten();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: warnaSekunder(),
        backgroundColor: warnaPrimer(),
        title: const Text("Referal Bonus"),
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.only(
              top: 20.0,
              left: 20.0,
              right: 20.0,
            ),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
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
                                                          const ReferalBonus()));
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
                                                          const ReferalBonus()));
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
                                            return Text(snapshot
                                                .data!.totalAutomainten);
                                          }
                                        } else if (snapshot.hasError) {
                                          return TextButton(
                                            onPressed: () {
                                              Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const ReferalBonus()));
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
                Container(
                    width: 335,
                    height: MediaQuery.of(context).size.height*0.65,
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      bottom: 25.0,
                    ),
                    child: FutureBuilder<List<SearchByIdBonus>>(
                        future: futureSearchByIdBonus,
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            List<SearchByIdBonus>? data = snapshot.data;
                            return ListView.builder(
                                itemCount: data!.length,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return Container(
                                    padding: const EdgeInsets.only(
                                      top: 15.0,
                                    ),
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.black))),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Waktu : " +
                                            data[index].waktuBonus.toString()),
                                        const SizedBox(height: 10),
                                        Text("Jenis : " +
                                            data[index].jenis.toString()),
                                        const SizedBox(height: 10),
                                        Text("Dari : " +
                                            data[index].dari.toString()),
                                        const SizedBox(height: 10),
                                        Text("Nominal : " +
                                            data[index].nominal.toString()),
                                        const SizedBox(height: 10),
                                      ],
                                    ),
                                  );
                                });
                          } else if (snapshot.hasError) {
                            return TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ReferalBonus()));
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
                          return Container(
                              height: 100,
                              width: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                // color: Colors.white,
                              ),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Shimmer.fromColors(
                                      child: const CircularProgressIndicator(),
                                      baseColor: warnaPrimer(),
                                      highlightColor: warnaSekunder(),
                                    ),
                                  ]));
                        })),
              ],
            )),
      ),
    );
  }
}
