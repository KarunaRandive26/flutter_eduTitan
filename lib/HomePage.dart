import 'package:flutter/material.dart';
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
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          elevation: 0.0,
          toolbarHeight: 90.0,
          title: Container(
            child: Column(children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    height: 75.0,
                    width: 75.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(37.5),
                      image: DecorationImage(
                          image: AssetImage('assets/images/girlprofile.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Container(
                      child: Text(
                    'Hello, Karuna',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            blurRadius: 10.0,
                            color: Color.fromARGB(255, 50, 50, 50),
                            offset: Offset(1.0, 1.0),
                          )
                        ]),
                  ))
                ],
              )
            ]),
          )),
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
                "Karuna",
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 2, 55, 14)),
              ),
              accountEmail: Text(
                "karunarandive9@gmail.com",
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
              Navigator.pop(context);
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
                    color: Colors.white,
                    height: 200.0,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              width: 200.0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Padding(padding: EdgeInsets.only(left: 15.0)),
                                  Stack(
                                    children: <Widget>[
                                      Container(
                                          child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 0, 0, 30)),
                                          Text('Explore,',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Color.fromARGB(
                                                      255, 67, 18, 85))),
                                          Text('Enjoy,',
                                              style: TextStyle(
                                                fontSize: 25,
                                              )),
                                          Text('and Learn',
                                              style: TextStyle(
                                                fontSize: 30,
                                              ))
                                        ],
                                      ))
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(right: 30.0),
                                height: 200.0,
                                width: 200.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/study.png'),
                                        fit: BoxFit.fitWidth)),
                              ),
                            )
                          ],
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
                  Container(
                    child: Lottie.asset(
                      'assets/images/home-bg.json',
                      fit: BoxFit.contain,
                    ),
                  ),
                ]),
          )),
    );
  }
}
