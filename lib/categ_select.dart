import 'package:flutter/material.dart';
import './std_subjects.dart';

class Categ_Item extends StatelessWidget {
  final String std_name;
  Categ_Item(this.std_name);
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => std_Subjects()));
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
        width: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.width * 0.4,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20.0),
                topLeft: Radius.circular(20.0)),
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
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 241, 173, 227),
                Color.fromARGB(255, 48, 22, 66),
              ],
            )),
        child: Align(
          alignment: AlignmentDirectional.bottomCenter,
          child: Text(
            std_name,
            style: TextStyle(
                fontFamily: 'Rajdhani',
                fontSize: 45.0,
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
    );
  }
}
