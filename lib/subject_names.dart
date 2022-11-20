import 'dart:ui';
import 'package:circles_background/circles_background/circles_background.dart';

import './subject_items_Screen.dart';
import 'package:flutter/material.dart';

class Subject_Names extends StatelessWidget {
  final String subject_name;

  Subject_Names(this.subject_name);
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Subject_Items_Screen()));
        },
        child: Container(
          padding: EdgeInsets.only(right: 10.0),
          margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.02,
              right: MediaQuery.of(context).size.width * 0.02,
              bottom: 20.0),
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.width * 0.3,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 133, 96, 152),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0)),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 129, 129, 129),
                offset: const Offset(
                  2.0,
                  2.0,
                ),
                blurRadius: 5.0,
                spreadRadius: 1.0,
              )
            ],
          ),
          child: Stack(children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 148, 133, 190),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(200),
                        bottomLeft: Radius.circular(200))),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: Color.fromARGB(87, 175, 157, 240),
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(100))),
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 10.0),
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Text(
                      subject_name,
                      style: TextStyle(
                          fontFamily: 'Rajdhani',
                          fontSize: 30.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(2.5, 2.5),
                              blurRadius: 3.0,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ]),
                    ),
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child: Transform.rotate(
                          angle: 45.0,
                          child: Icon(
                            Icons.menu_book_rounded,
                            size: 100,
                            color: Color.fromARGB(255, 193, 203, 222),
                          ),
                        )))
              ],
            )
          ]),
        ));
  }
}
