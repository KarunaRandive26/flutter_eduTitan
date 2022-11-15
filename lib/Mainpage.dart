import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_project/category_screen.dart';
import 'package:flutter_app_project/speechtotext.dart';
import 'package:flutter_app_project/std_subjects.dart';
import 'package:flutter_app_project/subject_items_Screen.dart';

import 'homepage.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mainPage(),
    );
  }
}

class mainPage extends StatefulWidget {
  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  int _selectedIndex = 0;
  @override
  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Category_Screen(),
    std_Subjects(),
    Speechtotext()
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Color.fromARGB(255, 187, 187, 187),
        items: [
          CurvedNavigationBarItem(
            labelStyle: TextStyle(
                fontFamily: 'Rajdhani',
                fontWeight: FontWeight.w600,
                color: Colors.white),
            child: Icon(
              Icons.home_filled,
              color: Colors.white,
            ),
            label: 'Home',
          ),
          CurvedNavigationBarItem(
            labelStyle: TextStyle(
                fontFamily: 'Rajdhani',
                fontWeight: FontWeight.w600,
                color: Colors.white),
            child: Icon(
              Icons.category_sharp,
              color: Colors.white,
            ),
            label: 'Category',
          ),
          CurvedNavigationBarItem(
            labelStyle: TextStyle(
                fontFamily: 'Rajdhani',
                fontWeight: FontWeight.w600,
                color: Colors.white),
            child: Icon(
              Icons.bookmark,
              color: Colors.white,
            ),
            label: 'Saved',
          ),
          CurvedNavigationBarItem(
            labelStyle: TextStyle(
                fontFamily: 'Rajdhani',
                fontWeight: FontWeight.w600,
                color: Colors.white),
            child: Icon(
              Icons.account_circle,
              color: Colors.white,
            ),
            label: 'Dashboard',
          ),
        ],
        onTap: (index) => setState(() => _selectedIndex = index),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
