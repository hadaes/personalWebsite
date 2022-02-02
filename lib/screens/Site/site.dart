import "package:flutter/material.dart";
import 'package:personalWebsite/screens/Site/desktop.dart';
import 'package:personalWebsite/screens/Site/mobile.dart';

// Body content for About This Site page

class Site extends StatefulWidget {
  final int buttonPushed;

  Site(this.buttonPushed);

  @override
  _SiteState createState() => _SiteState();
}

class _SiteState extends State<Site> with SingleTickerProviderStateMixin {
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
            if (constraints.maxWidth <= 900 || constraints.maxHeight <= 600) {
              return SiteMobile();
            } else {
              return SiteDesktop();
            }
          },
        ),
      ),
    );
  }
}
