import "package:flutter/material.dart";

class AboutMe extends StatelessWidget {
  int buttonPushed;

  AboutMe({this.buttonPushed});

  @override
  Widget build(BuildContext context) {
    if (buttonPushed > 0) {
      return Hero(
        child: Center(child: Text("I am jack scherlag")),
        tag: "about",
      );
    } else {
      return Container(
        height: 0,
        width: 0,
      );
    }
  }
}
