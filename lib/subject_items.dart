import 'package:flutter/material.dart';
import './view_item_screen.dart';
import './saved.dart';


class Subject_Items extends StatelessWidget {
  final String Img_Path;
  final String subject_Item_name;

  Subject_Items(this.Img_Path, this.subject_Item_name);

  Color _iconColor = Colors.white;
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => View_Item_Screen()));
      },
      child: Container(
          margin: EdgeInsets.all(5.0),
          padding: EdgeInsets.all(5.0),
          width: MediaQuery.of(context).size.width * 0.1,
          height: MediaQuery.of(context).size.width * 0.1,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
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
              image: DecorationImage(
                image: AssetImage(Img_Path),
                fit: BoxFit.cover,
                colorFilter: new ColorFilter.mode(
                    Color.fromARGB(255, 238, 238, 238).withOpacity(1.0),
                    BlendMode.darken),
              )),
          child: Stack(children: <Widget>[
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Text(
                subject_Item_name,
                style: TextStyle(
                    fontFamily: 'Rajdhani',
                    fontSize: 45.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(2.5, 2.5),
                        blurRadius: 3.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ]),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: (() {
                  _iconColor = Colors.red;
                  saved_imgpath.add(Img_Path);
                  saved_item_name.add(subject_Item_name);
                }),
                icon: Icon(
                  Icons.bookmark,
                  color: _iconColor,
                ),
              ),
            )
          ])),
    );
  }
}
