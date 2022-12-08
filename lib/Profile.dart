import 'package:flutter/material.dart';
import 'package:flutter_app_project/profile_data.dart';
import 'package:lottie/lottie.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
        elevation: 0.0,
        backgroundColor: Colors.teal,
        title: Text(
          'Profile',
          style: TextStyle(fontSize: 25.0),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                  Positioned(
                    bottom: 20,
                    left: MediaQuery.of(context).size.width * 0.35,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 212, 212, 212),
                              offset: const Offset(
                                2.0,
                                2.0,
                              ),
                              blurRadius: 5.0,
                              spreadRadius: 1.0,
                            )
                          ],
                          color: Colors.teal[200],
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/girlprofile.jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(100.0)),
                    ),
                  )
                ],
              ),
            ),
            Profile_data('Name:', 'Gaurav'),
            Profile_data('Mail:', 'Gaurav@wmg.com'),
            Profile_data('Phone Number:', '9325885022'),
          ],
        ),
      ),
    );
  }
}
