import 'package:flutter/material.dart';
import 'package:flutter_app_project/std_subjects.dart';
import './subject_items.dart';
import 'item_List.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class Subject_Items_Screen extends StatelessWidget {
  final List<String> imgpath = [
    'assets/images/pine.webp',
    'assets/images/pine.webp',
    'assets/images/pine.webp',
    'assets/images/pine.webp',
    'assets/images/pine.webp',
    'assets/images/pine.webp',
    'assets/images/pine.webp',
    'assets/images/pine.webp',
    'assets/images/pine.webp',
    'assets/images/pine.webp',
    'assets/images/pine.webp',
    'assets/images/pine.webp',
    'assets/images/pine.webp',
    'assets/images/pine.webp',
    'assets/images/pine.webp',
    'assets/images/pine.webp',
  ];
  final List<String> item_name = [
    'Pine',
    'Pine',
    'Pine',
    'Pine',
    'Pine',
    'Pine',
    'Pine',
    'Pine',
    'Pine',
    'Pine',
    'Pine',
    'Pine',
    'Pine',
    'Pine',
    'Pine',
    'Pine'
  ];
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          titleSpacing: 0,
          automaticallyImplyLeading: false,
          toolbarHeight: MediaQuery.of(context).size.height * 0.3,
          backgroundColor: Colors.white,
          title: Container(
            margin: EdgeInsets.only(bottom: 10.0),
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
                        color: Color.fromARGB(162, 169, 221, 237),
                        borderRadius: BorderRadius.circular(200)),
                  ),
                ),
                Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(84, 151, 200, 235),
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(250))),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(144, 108, 204, 233),
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
                            color: Colors.white,
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
                                color: Colors.white,
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
                                  fontSize: 27.0,
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
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(right: 5.0, left: 5.0, top: 10.0),
          child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              scrollDirection: Axis.vertical,
              children: List.generate(imgpath.length, (index) {
                return AnimationConfiguration.staggeredGrid(
                    position: index,
                    columnCount: 3,
                    child: ScaleAnimation(
                        duration: Duration(milliseconds: 2000),
                        child: FadeInAnimation(
                          child:
                              Subject_Items(imgpath[index], item_name[index]),
                        )));
              })),
        ));
  }
}
