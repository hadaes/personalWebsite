import "package:flutter/material.dart";
import 'package:personalWebsite/screens/AboutMe/aboutme.dart';
import 'package:personalWebsite/screens/Site/site.dart';
import 'package:personalWebsite/screens/Projects/projects.dart';

// Controls body content based on buttonPushed input

class BodyController extends StatelessWidget {
  final int buttonPushed;

  BodyController(this.buttonPushed);

  @override
  Widget build(BuildContext context) {
    switch (buttonPushed) {
      case 1:
        return AboutMe(buttonPushed);
      case 2:
        return Site(buttonPushed);
      case 3:
        return Project(buttonPushed);
      default:
        return Container();
    }
    // if (buttonPushed == 0) {
    //   return Container();
    // } else if (buttonPushed == 1) {
    //   return AboutMe(buttonPushed);
    // } else if (buttonPushed == 2){
    //   return Site(buttonPushed);
    // }
    // else {
    //   return Site(buttonPushed);
    // }
  }
}
