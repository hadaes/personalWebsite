import "package:flutter/material.dart";

class AboutMe extends StatefulWidget {
  int buttonPushed;

  AboutMe({this.buttonPushed});

  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    if (widget.buttonPushed > 0) {
      return Center(
        child: Text(
          "I am jack scherlag",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      );
    } else {
      return Container(
        height: 0,
        width: 0,
      );
    }
  }
}
