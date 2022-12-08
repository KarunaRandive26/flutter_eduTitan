import 'package:flutter/material.dart';

class Profile_data extends StatelessWidget {
  final String title;
  final String info;
  Profile_data(this.title, this.info);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12.0, right: 15.0),
      child: Container(
        padding: EdgeInsets.only(top: 10.0, right: 15.0),
        height: MediaQuery.of(context).size.width * 0.25,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 212, 212, 212),
                offset: const Offset(
                  2.0,
                  2.0,
                ),
                blurRadius: 5.0,
                spreadRadius: 1.0,
              )
            ],
            color: Colors.blue[100],
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0))),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              children: <Widget>[Text(title), Text(info)],
            )),
      ),
    );
  }
}
