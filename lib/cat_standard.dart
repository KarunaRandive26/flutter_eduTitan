import 'package:flutter/material.dart';
import 'package:flutter_app_project/std_subjects.dart';

class Category_std extends StatelessWidget {
  final String stdno;
  final Color start;
  final Color end;
  final String ImgPath;

  Category_std(this.stdno, this.start, this.end, this.ImgPath);

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => std_Subjects()));
      },
      child: Container(
        margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        height: 120.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [start, end])),
        child: Row(children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 20.0),
            width: MediaQuery.of(context).size.width * 0.6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Standard',
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
                Text(
                  stdno,
                  style: TextStyle(color: Colors.white, fontSize: 30.0),
                ),
              ],
            ),
          ),
          Align(
            child: Container(
                width: MediaQuery.of(context).size.width * 0.25,
                margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImgPath), fit: BoxFit.cover))),
          ),
        ]),
      ),
    );
  }
}
