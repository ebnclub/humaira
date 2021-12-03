import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:humaira/color/color.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({Key? key}) : super(key: key);

  @override
  _WishlistState createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        Container(
            width: MediaQuery.of(context).size.width,
            height: 120,
            color: warnaPrimer(),
            child: Padding(
                padding: EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 70),
                      Text("Wishlist",
                          style:
                              TextStyle(fontSize: 24, color: warnaSekunder())),
                    ]))),
        SizedBox(
          height: 20,
        ),
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
                        image: AssetImage('assets/images/2.jpg'), fit: BoxFit.fill))),
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
                        image: AssetImage('assets/images/1.png'), fit: BoxFit.fill))),
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
      ],
    )));
  }
}
