import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:humaira/color/color.dart';

class DirectSponsor extends StatefulWidget {
  const DirectSponsor({Key? key}) : super(key: key);

  @override
  _DirectSponsorState createState() => _DirectSponsorState();
}

class _DirectSponsorState extends State<DirectSponsor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: warnaSekunder(),
        backgroundColor: warnaPrimer(),
        title: const Text("Direct Sponsor"),
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
              const Text("Data Downline Anda", style: TextStyle(fontSize: 20)),
              Container(
                  width: 335,
                  decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.black))),
                  padding: const EdgeInsets.only(
                    top: 15.0,
                    left: 20.0,
                    bottom: 25.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("No"),
                      SizedBox(height: 10),
                      Text("Username"),
                      SizedBox(height: 10),
                      Text("Tanggal daftar"),
                      SizedBox(height: 10),
                      Text("Sponsor"),
                      SizedBox(height: 10),
                      Text("Update"),
                    ],
                  )),
              Container(
                  width: 335,
                  decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.black))),
                  padding: const EdgeInsets.only(
                    top: 15.0,
                    left: 20.0,
                    bottom: 25.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("No"),
                      SizedBox(height: 10),
                      Text("Username"),
                      SizedBox(height: 10),
                      Text("Tanggal daftar"),
                      SizedBox(height: 10),
                      Text("Sponsor"),
                      SizedBox(height: 10),
                      Text("Update"),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
