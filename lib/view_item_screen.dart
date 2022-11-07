import 'package:flutter/material.dart';

class View_Item_Screen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 97, 89, 137),
          elevation: 3.0,
          toolbarHeight: 70.0,
          title: Container(
            child: Text(
              'Item',
              style: TextStyle(
                fontFamily: 'Rajdhani',
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          )),
      body: Column(
        children: <Widget>[
          Container(
            
          )
        ],
      ),
    );
  }
}
