import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:humaira/pages/account/account.dart';
import 'package:humaira/pages/ebc-com/ebc_com.dart';
import 'package:humaira/pages/home/home.dart';
import 'package:humaira/pages/my_course/my_course.dart';
import 'package:humaira/pages/wishlist/wishlist.dart';

class BottomNavgigator extends StatefulWidget {
  int menu;
  BottomNavgigator({Key? key, required this.menu}) : super(key: key);

  @override
  _BottomNavgigatorState createState() => _BottomNavgigatorState();
}

class _BottomNavgigatorState extends State<BottomNavgigator> {
  List pages = [const HomePage(), const MyCourse(), const EbnClub(), const Wishlist(), const Account()];
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: My Course',
      style: optionStyle,
    ),
    Text(
      'Index 2: EBN Club',
      style: optionStyle,
    ),
    Text(
      'Index 3: Wishlist',
      style: optionStyle,
    ),
    Text(
      'Index 4: Account',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      widget.menu = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[widget.menu],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, color: Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_collection_outlined, color: Colors.black),
            label: 'My Course',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle_outlined,
                color: Colors.black),
            label: 'EBN Club',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline, color: Colors.black),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined, color: Colors.black),
            label: 'Account',
          ),
        ],
        currentIndex: widget.menu,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
