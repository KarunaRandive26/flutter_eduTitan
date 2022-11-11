import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app_project/std_subjects.dart';
import 'Mainpage.dart';
import 'login.dart';
import 'std_subjects.dart';
import 'HomePage.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }

  startTime() async {
    var duration = new Duration(seconds: 4);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MainPage()));
  }

  initScreen(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromARGB(255, 241, 173, 227),
            Color.fromARGB(255, 48, 22, 66),
          ],
        )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Welcome',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  'To',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'EduTitans',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
