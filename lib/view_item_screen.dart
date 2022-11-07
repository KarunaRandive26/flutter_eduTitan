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
        body: Column(children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: const Offset(
                      2.0,
                      2.0,
                    ),
                    blurRadius: 5.0,
                  )
                ],
              ),
            ),
          )
        ]));
  }
}
