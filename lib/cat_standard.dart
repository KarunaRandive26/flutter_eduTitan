import 'package:flutter/material.dart';
import './subject_items_Screen.dart';

class Category_std extends StatelessWidget {
  final String cat_name;
  final Color start;
  final Color end;
  final String ImgPath;

  Category_std(this.cat_name, this.start, this.end, this.ImgPath);

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Subject_Items_Screen()));
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
            width: MediaQuery.of(context).size.width * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  cat_name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
                width: MediaQuery.of(context).size.width * 0.3,
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
