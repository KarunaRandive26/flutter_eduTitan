import 'package:flutter/material.dart';
import 'package:flutter_app_project/upcoming.dart';
import './categ_select.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class Category_Screen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Text(
            'Categories',
            style: TextStyle(
                color: Colors.black87,
                fontFamily: 'Rajdhani',
                fontWeight: FontWeight.w600,
                fontSize: 25.0),
          )),
      body: Container(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.width * 0.02,
            left: MediaQuery.of(context).size.width * 0.02),
        color: Colors.white,
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Select Categories',
                style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'Rajdhani',
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0),
              ),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Categ_Item('assets/images/std1.png'),
                    Categ_Item('assets/images/std2.png'),
                    Categ_Item('assets/images/std3.png'),
                    Categ_Item('assets/images/std4.png'),
                  ],
                )),
            SizedBox(
              height: 20.0,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Upcomings',
                style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'Rajdhani',
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Upcoming(),
                  Upcoming(),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Most Viewed',
                style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'Rajdhani',
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
