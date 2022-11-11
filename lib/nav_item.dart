import 'package:flutter/material.dart';

class Nav_Item extends StatelessWidget {
  final IconData iconname;
  final String iconLabel;
  Nav_Item(this.iconname, this.iconLabel);
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 4.0),
      height: 50,
      child: Column(
        children: [Icon(iconname, size: 30), Text(iconLabel)],
      ),
    );
  }
}
