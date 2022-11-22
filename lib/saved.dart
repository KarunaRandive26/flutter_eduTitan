import 'package:flutter/material.dart';
import './subject_items.dart';

final List<String> saved_imgpath = ['assets/images/pine.webp'];
final List<String> saved_item_name = ['pine'];

class Saved_items extends StatelessWidget {
  List<String> get savedimgpath => saved_imgpath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          title: Text(
            'Saved',
            style: TextStyle(
                color: Colors.black87,
                fontFamily: 'Rajdhani',
                fontWeight: FontWeight.w600,
                fontSize: 25.0),
          ),
        ),
        body: Container(
            child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          scrollDirection: Axis.vertical,
          children: List.generate(saved_imgpath.length, (index) {
            return Subject_Items(saved_imgpath[index], saved_item_name[index]);
          }),
        )));
  }
}
