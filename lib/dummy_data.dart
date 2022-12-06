import 'package:flutter/material.dart';

import './models/category.dart';
import './models/subjects.dart';

const Dummy_Categories = const [
  Category(
      cat_name: 'Emotions',
      start: Color.fromARGB(255, 12, 177, 34),
      end: Colors.yellow,
      ImgPath: 'assets/images/emotion.png'),
  Category(
      cat_name: 'Colors',
      start: Color.fromARGB(255, 12, 37, 177),
      end: Color.fromARGB(255, 241, 119, 194),
      ImgPath: 'assets/images/colors.png'),
];

const Dummy_subjects = const [
  subjects(
      id: 's1',
      title: 'Standard: 1st',
      stdno: '1',
      subs: ['Animals', 'Trees', 'Birds', 'Vehicles']),
  subjects(
      id: 's2',
      title: 'Standard: 2nd',
      stdno: '2',
      subs: ['Numbers', 'Alphabets', 'Birds', 'Vehicles']),
  subjects(
      id: 's3',
      title: 'Standard: 3rd',
      stdno: '3',
      subs: ['Animals', 'Trees', 'Birds', 'Vehicles']),
  subjects(
      id: 's4',
      title: 'Standard: 4th',
      stdno: '4',
      subs: ['Animals', 'Trees', 'Birds', 'Vehicles']),
];
