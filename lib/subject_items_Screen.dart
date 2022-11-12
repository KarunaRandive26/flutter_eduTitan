import 'package:flutter/material.dart';
import 'package:flutter_app_project/std_subjects.dart';
import './subject_items.dart';

class Subject_Items_Screen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 129, 223, 251),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 187, 187, 187),
                    offset: const Offset(
                      2.0,
                      2.0,
                    ),
                    blurRadius: 5.0,
                    spreadRadius: 1.0,
                  ),
                ],
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(40.0))),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(163, 179, 235, 252),
                        borderRadius: BorderRadius.circular(200)),
                  ),
                ),
                Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(86, 157, 205, 240),
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(250))),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(144, 101, 190, 217),
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(250))),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Icon(Icons.emoji_objects,
                        size: 100, color: Color.fromRGBO(255, 255, 255, 0.702)),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(left: 5.0, top: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back_sharp,
                            size: 35,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            Navigator.pop(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => std_Subjects()));
                          },
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.0),
                          child: Text(
                            'Subject-Name',
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.white70,
                                fontFamily: 'Rajdhani',
                                fontWeight: FontWeight.w600,
                                shadows: [
                                  Shadow(
                                    offset: Offset(2.5, 2.5),
                                    blurRadius: 3.0,
                                    color: Color.fromARGB(255, 131, 131, 131),
                                  )
                                ]),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.12,
                          alignment: Alignment.bottomLeft,
                          padding: EdgeInsets.only(left: 5.0),
                          child: Text('Search For items',
                              style: TextStyle(
                                  fontSize: 35.0,
                                  fontFamily: 'Rajdhani',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(2, 2.5),
                                      blurRadius: 3.0,
                                      color: Color.fromARGB(255, 131, 131, 131),
                                    )
                                  ])),
                        )
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    ));
  }
}
