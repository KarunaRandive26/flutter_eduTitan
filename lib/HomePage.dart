import 'package:flutter/material.dart';
import 'package:flutter_app_project/Profile.dart';
import './dummy_data.dart';
import './models/subjects.dart';
import './cat_standard.dart';
import './category_screen.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromARGB(255, 75, 75, 75)),
        backgroundColor: Color.fromARGB(255, 166, 235, 228),
        elevation: 3.0,
        toolbarHeight: 80.0,
        title: Align(
          alignment: Alignment.centerRight,
          child: Container(
            height: 75.0,
            width: 75.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(37.5),
              image: DecorationImage(
                  image: AssetImage('assets/images/girlprofile.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        child: ListView(children: [
          const UserAccountsDrawerHeader(
              arrowColor: Color.fromARGB(255, 71, 71, 71),
              decoration: BoxDecoration(
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
                  color: Color.fromARGB(255, 229, 229, 229),
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(40.0))),
              accountName: Text(
                "Arial",
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 2, 55, 14)),
              ),
              accountEmail: Text(
                "arial9@gmail.com",
                style: TextStyle(
                    fontSize: 15.0, color: Color.fromARGB(255, 2, 55, 14)),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/girlprofile.jpg'),
              )),
          ListTile(
            iconColor: Color.fromARGB(255, 2, 55, 14),
            leading: Icon(
              Icons.home,
            ),
            title: Text(
              'Profile',
              style: TextStyle(
                color: Color.fromARGB(255, 2, 55, 14),
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            },
          ),
          ListTile(
            iconColor: Color.fromARGB(255, 2, 55, 14),
            leading: Icon(
              Icons.help,
            ),
            title: Text(
              'Help Section',
              style: TextStyle(
                color: Color.fromARGB(255, 2, 55, 14),
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            iconColor: Color.fromARGB(255, 2, 55, 14),
            leading: Icon(
              Icons.star,
            ),
            title: Text(
              'Feedback',
              style: TextStyle(
                color: Color.fromARGB(255, 2, 55, 14),
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            iconColor: Color.fromARGB(255, 2, 55, 14),
            leading: Icon(
              Icons.logout,
            ),
            title: Text(
              'Log out',
              style: TextStyle(
                color: Color.fromARGB(255, 2, 55, 14),
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ]),
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            color: Colors.white,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          child: Lottie.asset(
                            'assets/images/home-bg2.json',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          child: Lottie.asset(
                            'assets/images/home-bg.json',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Container(
                            padding: EdgeInsets.only(right: 30.0),
                            height: 200.0,
                            width: 200.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/study.png'),
                                    fit: BoxFit.fitWidth)),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 31, 42, 132),
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Column(
                    children: Dummy_Categories.map((catData) => Category_std(
                        catData.cat_name,
                        catData.start,
                        catData.end,
                        catData.ImgPath)).toList(),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        child: Text(
                          'more',
                          style: TextStyle(color: Colors.blue),
                        ),
                        onPressed: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Category_Screen()));
                        }),
                      )),
                ]),
          )),
    );
  }
}
