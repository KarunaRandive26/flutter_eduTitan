import 'package:flutter/material.dart';

class Category {
  final String cat_name;
  final Color start;
  final Color end;
  final String ImgPath;

  const Category(
      {required this.cat_name,
      required this.start,
      required this.end,
      required this.ImgPath});
}
