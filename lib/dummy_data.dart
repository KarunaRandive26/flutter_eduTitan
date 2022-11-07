import 'package:flutter/material.dart';

import './models/category.dart';
import './models/subjects.dart';

const Dummy_Categories = const [
  Category(
      stdno: '1',
      start: Color.fromARGB(255, 12, 177, 34),
      end: Colors.yellow,
      ImgPath: 'assets/images/girlprofile.webp'),
  Category(
      stdno: '2',
      start: Color.fromARGB(255, 12, 37, 177),
      end: Color.fromARGB(255, 241, 119, 194),
      ImgPath: 'assets/images/girlprofile.webp'),
  Category(
      stdno: '3',
      start: Color.fromARGB(255, 255, 90, 35),
      end: Colors.yellow,
      ImgPath: 'assets/images/girlprofile.webp'),
  Category(
      stdno: '4',
      start: Color.fromARGB(255, 177, 12, 92),
      end: Color.fromARGB(255, 255, 59, 183),
      ImgPath: 'assets/images/girlprofile.webp')
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