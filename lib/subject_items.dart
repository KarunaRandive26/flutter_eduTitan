import 'package:flutter/material.dart';
import './view_item_screen.dart';
import './saved.dart';

class Subject_Items extends StatefulWidget {
  final String Img_Path;
  final String subject_Item_name;

  Subject_Items(this.Img_Path, this.subject_Item_name);

  @override
  State<Subject_Items> createState() => _Subject_ItemsState();
}

class _Subject_ItemsState extends State<Subject_Items> {
  bool isPressed = false;

  Color _iconColor = Color(0xff9A9A9A);

  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => View_Item_Screen()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.width * 0.4,
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.all(5.0),
                child: Stack(children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.only(left: 6.0, right: 6.0, top: 6.0),
                      width: MediaQuery.of(context).size.width * 0.35,
                      height: MediaQuery.of(context).size.width * 0.35,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100.0),
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
                            image: AssetImage(widget.Img_Path),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: (() {
                        setState(() {
                          isPressed = true;
                        });
                        saved_imgpath.add(widget.Img_Path);
                        saved_item_name.add(widget.subject_Item_name);
                      }),
                      icon: Icon(Icons.favorite,
                          color: (isPressed) ? Colors.red : Color(0xff9A9A9A)),
                    ),
                  )
                ])),
            Text(
              widget.subject_Item_name,
              style: TextStyle(
                  fontFamily: 'Rajdhani',
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 0, 0, 0),
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(2.5, 2.5),
                      blurRadius: 3.0,
                      color: Color.fromARGB(255, 222, 222, 222),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
