import "package:flutter/material.dart";
import 'package:personalWebsite/screens/AboutMe/desktop.dart';
import 'package:personalWebsite/screens/AboutMe/mobile.dart';

// Body content for the About Me screen

class AboutMe extends StatefulWidget {
  final int buttonPushed;

  AboutMe(this.buttonPushed);

  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Container(
        color: Colors.transparent.withOpacity(0.3),
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth <= 900 || constraints.maxHeight <= 900) {
              return AboutMeMobile(constraints);
            } else {
              return AboutMeDesktop(constraints);
            }
          },
        ),
      ),
    );
  }
}
