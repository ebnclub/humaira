import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:humaira/color/color.dart';

class IsiKategori extends StatefulWidget {
  const IsiKategori({Key? key}) : super(key: key);

  @override
  _IsiKategoriState createState() => _IsiKategoriState();
}

class _IsiKategoriState extends State<IsiKategori> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: warnaSekunder(),
        backgroundColor: warnaPrimer(),
        title: const Text("(Nama Kategori)"),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(
            top: 20.0,
            bottom: 20.0,
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                ),
                width: 330.0,
                height: 100.0,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  color: warnaSekunder(),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 3,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Row(children: [
                  Container(
                      width: 70.0,
                      height: 70.0,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                              image: AssetImage('assets/images/2.jpg'),
                              fit: BoxFit.fill))),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                          style: TextStyle(fontSize: 14, color: warnaPrimer()),
                        ),
                      ])
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
