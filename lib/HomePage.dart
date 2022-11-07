import 'package:flutter/material.dart';

import './dummy_data.dart';
import './cat_standard.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 223, 255, 118),
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
                            color: Color.fromARGB(255, 14, 114, 2),
                            offset: Offset(1.0, 1.0),
                          )
                        ]),
                  ))
                ],
              )
            ]),
          )),
      endDrawer: Drawer(
        backgroundColor: Color.fromARGB(255, 159, 206, 89),
        child: ListView(children: [
          const UserAccountsDrawerHeader(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 190, 225, 133)),
              accountName: Text(
                "Karuna",
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 3, 112, 29)),
              ),
              accountEmail: Text(
                "karunarandive9@gmail.com",
                style: TextStyle(
                    fontSize: 15.0, color: Color.fromARGB(255, 3, 112, 29)),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/girlprofile.jpg'),
              )),
          ListTile(
            iconColor: Color.fromARGB(255, 3, 112, 29),
            leading: Icon(
              Icons.home,
            ),
            title: Text(
              'Profile',
              style: TextStyle(
                color: Color.fromARGB(255, 3, 112, 29),
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            iconColor: Color.fromARGB(255, 3, 112, 29),
            leading: Icon(
              Icons.help,
            ),
            title: Text(
              'Help Section',
              style: TextStyle(
                color: Color.fromARGB(255, 3, 112, 29),
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            iconColor: Color.fromARGB(255, 3, 112, 29),
            leading: Icon(
              Icons.star,
            ),
            title: Text(
              'Feedback',
              style: TextStyle(
                color: Color.fromARGB(255, 3, 112, 29),
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            iconColor: Color.fromARGB(255, 3, 112, 29),
            leading: Icon(
              Icons.logout,
            ),
            title: Text(
              'Log out',
              style: TextStyle(
                color: Color.fromARGB(255, 3, 112, 29),
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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                  Widget>[
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 0, 30)),
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
                                  image: AssetImage('assets/images/study.webp'),
                                  fit: BoxFit.cover)),
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
                  catData.stdno,
                  catData.start,
                  catData.end,
                  catData.ImgPath)).toList(),
            ),
          ])),
    );
  }
}
