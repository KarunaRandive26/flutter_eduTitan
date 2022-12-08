import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    bottom: 0,
                    left: MediaQuery.of(context).size.width * 0.35,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.teal[200],
                          image: DecorationImage(
                              image: AssetImage('assets/images/study.png'),
                              fit: BoxFit.fitWidth),
                          borderRadius: BorderRadius.circular(100.0)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
