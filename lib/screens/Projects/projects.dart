import "package:flutter/material.dart";
import 'package:personalWebsite/screens/Projects/desktop.dart';
import 'package:personalWebsite/screens/Projects/mobile.dart';

// Body content for Projects page

class Project extends StatefulWidget {
  final int buttonPushed;

  Project(this.buttonPushed);

  @override
  _ProjectState createState() => _ProjectState();
}

class _ProjectState extends State<Project> with SingleTickerProviderStateMixin {
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
            if (constraints.maxWidth <= 600 || constraints.maxHeight <= 600) {
              return ProjectsMobile();
            } else {
              return ProjectsDesktop();
            }
          },
        ),
      ),
    );
  }
}
