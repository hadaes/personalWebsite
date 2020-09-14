import "package:flutter/material.dart";
import 'package:personalWebsite/screens/aboutme.dart';
import 'package:personalWebsite/screens/site.dart';

// Controls body content based on buttonPushed input

class BodyController extends StatelessWidget {
  final int buttonPushed;

  BodyController(this.buttonPushed);

  @override
  Widget build(BuildContext context) {
    if (buttonPushed == 0) {
      return Container();
    } else if (buttonPushed == 1) {
      return AboutMe(buttonPushed);
    } else {
      return Site(buttonPushed);
    }
  }
}
