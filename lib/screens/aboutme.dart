import "package:flutter/material.dart";

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Hero(
      child: Center(child: Text("I am jack scherlag")),
      tag: "about",
    );
  }
}
