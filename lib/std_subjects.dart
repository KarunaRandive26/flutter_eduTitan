import 'package:flutter/material.dart';
import './subject_names.dart';

class std_Subjects extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black87,
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text(
            'Subjects',
            style: TextStyle(
              shadows: [
                Shadow(
                  blurRadius: 10.0,
                  color: Color.fromARGB(255, 141, 141, 141),
                  offset: Offset(1.0, 1.0),
                )
              ],
              fontFamily: 'Rajdhani',
              fontSize: 30.0,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
              
            ),
          ),
        ),
        body: Container(
            height: double.maxFinite,
            margin: EdgeInsets.only(top: 10.0),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 158, 158, 158),
                    offset: const Offset(
                      2.0,
                      2.0,
                    ),
                    blurRadius: 5.0,
                    spreadRadius: 1.0,
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0))),
            child: Column(children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10.0, top: 25.0),
                height: 100.0,
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Select Subjects',
                      style: TextStyle(
                        shadows: [
                          Shadow(
                            blurRadius: 10.0,
                            color: Color.fromARGB(255, 193, 193, 193),
                            offset: Offset(1.0, 1.0),
                          )
                        ],
                        fontFamily: 'Rajdhani',
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    )),
              ),
              Column(
                children: <Widget>[
                  Subject_Names('Trees'),
                  Subject_Names('Animals'),
                  Subject_Names('Birds'),
                ],
              ),
            ])));
  }
}
