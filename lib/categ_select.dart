import 'package:flutter/material.dart';
import './subject_items_Screen.dart';

class Categ_Item extends StatelessWidget {
  final String assetName;
  final String cat_name;
  Categ_Item(this.assetName, this.cat_name);
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Subject_Items_Screen()));
            },
            child: Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.width * 0.4,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color.fromARGB(255, 132, 126, 253),
                    Color.fromARGB(255, 247, 224, 243),
                  ],
                ),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0)),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 198, 198, 198),
                    offset: const Offset(
                      2.0,
                      2.0,
                    ),
                    blurRadius: 3.0,
                    spreadRadius: 2.0,
                  ),
                ],
                image: DecorationImage(
                    image: AssetImage(assetName), fit: BoxFit.cover),
              ),
            ),
          ),
          Text(
            cat_name,
            style: TextStyle(
                color: Color.fromARGB(221, 83, 83, 83),
                fontFamily: 'Rajdhani',
                fontWeight: FontWeight.w600,
                fontSize: 20.0),
          )
        ],
      ),
    );
  }
}
