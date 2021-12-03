import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:humaira/color/color.dart';
import 'package:humaira/fetch/pending/statement_bonus.dart';
import 'package:shimmer/shimmer.dart';

class StatementBonus extends StatefulWidget {
  const StatementBonus({Key? key}) : super(key: key);

  @override
  _StatementBonusState createState() => _StatementBonusState();
}

class _StatementBonusState extends State<StatementBonus> {
  late Future<List<StatemenBonus>> futureStatemenBonus;

  @override
  void initState() {
    super.initState();
    futureStatemenBonus = fetchStatemenBonus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: warnaSekunder(),
        backgroundColor: warnaPrimer(),
        title: const Text("Statement Bonus"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(
            top: 20.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("History Statement Bonus",
                  style: TextStyle(fontSize: 20)),
              Container(
                  width: 335,
                  height: MediaQuery.of(context).size.height * 0.79,
                  decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.black))),
                  padding: const EdgeInsets.only(
                    top: 15.0,
                    left: 20.0,
                    bottom: 25.0,
                  ),
                  child: FutureBuilder<List<StatemenBonus>>(
                      future: futureStatemenBonus,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          List<StatemenBonus>? data = snapshot.data;
                          return ListView.builder(
                              itemCount: data!.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                if (data[index].waktuBayar == "kosong") {
                                  return const Text("Data masih kosong");
                                } else {
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
                                          Text("Tanggal : " +
                                              data[index].waktuBayar),
                                          const SizedBox(height: 10),
                                          Text("Bank : " + data[index].bank),
                                          const SizedBox(height: 10),
                                          Text("No Rekening : " +
                                              data[index].rekening),
                                          const SizedBox(height: 10),
                                          Text("Bonus : " + data[index].bonus),
                                          const SizedBox(height: 10),
                                          Text("Auto : " + data[index].auto),
                                          const SizedBox(height: 10),
                                          Text("Admin : " + data[index].admin),
                                          const SizedBox(height: 10),
                                          Text("Total : " + data[index].bayar),
                                          const SizedBox(height: 10),
                                          Text(
                                              "Status : " + data[index].status),
                                        ],
                                      ));
                                }
                              });
                        } else if (snapshot.hasError) {
                          return TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const StatementBonus()));
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
          ),
        ),
      ),
    );
  }
}
