import 'package:flutter/material.dart';
import './std_subjects.dart';

class Categ_Item extends StatelessWidget {
  final String assetName;
  Categ_Item(this.assetName);
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
          image:
              DecorationImage(image: AssetImage(assetName), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
