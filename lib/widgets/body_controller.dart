import "package:flutter/material.dart";
import 'package:personalWebsite/screens/aboutme.dart';
import 'package:personalWebsite/screens/site.dart';
import 'package:personalWebsite/screens/projects.dart';

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
        return Project();
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
