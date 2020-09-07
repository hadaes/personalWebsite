import 'package:auto_size_text/auto_size_text.dart';
import "package:flutter/material.dart";

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
      duration: Duration(seconds: 3),
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
            if (constraints.maxWidth < 600) {
              return ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: Center(
                      child: AutoSizeText(
                        "This website was built with Flutter and is hosted on Firebase",
                        style: TextStyle(
                            color: Colors.white, fontFamily: "Poppins"),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return Center(
                child: AutoSizeText(
                  "This website was built with Flutter and is hosted on Firebase",
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: "Poppins",
                      color:
                          widget.buttonPushed == 0 && widget.buttonPushed != 1
                              ? Colors.transparent
                              : Colors.white),
                  textAlign: TextAlign.center,
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
