import 'package:flutter/material.dart';
import 'package:flutter_app_project/subject_items.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class Item_List extends StatelessWidget {
  final List<String> imgpath = [
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
    'Pine'
  ];

  Widget build(BuildContext context) {
    return Container(
      child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          scrollDirection: Axis.vertical,
          children: List.generate(imgpath.length, (index) {
            return AnimationConfiguration.staggeredGrid(
                position: index,
                columnCount: 3,
                child: ScaleAnimation(
                    duration: Duration(milliseconds: 3000),
                    child: FadeInAnimation(
                      child: Subject_Items(imgpath[index], item_name[index]),
                    )));
          })),
    );
  }
}
