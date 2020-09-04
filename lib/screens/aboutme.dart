import 'package:auto_size_text/auto_size_text.dart';
import "package:flutter/material.dart";

class AboutMe extends StatefulWidget {
  final int buttonPushed;

  AboutMe({this.buttonPushed});

  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> with SingleTickerProviderStateMixin {
  // add layout builder

  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 6, milliseconds: 500),
    );
    _animation = Tween(begin: 0.4, end: 1.0).animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      color: widget.buttonPushed == 0
          ? Colors.transparent
          : Colors.transparent.withOpacity(0.3),
      duration: Duration(seconds: 1),
      child: widget.buttonPushed == 0
          ? Container()
          : LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth < 600) {
                  return ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: Center(
                          child: FadeTransition(
                            opacity: _animation,
                            child: AutoSizeText(
                              "Originating from Oklahoma City, I strive to further my knowledge in aviation and technology",
                              style: TextStyle(
                                  color: Colors.white, fontFamily: "Poppins"),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                } else {
                  return Center(
                    child: FadeTransition(
                      opacity: _animation,
                      child: AutoSizeText(
                        "Originating from Oklahoma City, I strive to further my knowledge in aviation and technology",
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: "Poppins",
                            color: widget.buttonPushed == 0
                                ? Colors.transparent
                                : Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                }
              },
            ),
    );
  }
}
