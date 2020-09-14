import 'package:auto_size_text/auto_size_text.dart';
import "package:flutter/material.dart";
import 'package:personalWebsite/widgets/quick_facts.dart';

// Body content for the about me screen

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
            if (constraints.maxWidth <= 600 || constraints.maxHeight <= 600) {
              // mobile view
              return ListView(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  AutoSizeText(
                    "Originating from Oklahoma City, I strive to further my knowledge in aviation and technology",
                    presetFontSizes: [25, 20, 15, 10],
                    style:
                        TextStyle(color: Colors.white, fontFamily: "Poppins"),
                    textAlign: TextAlign.center,
                  ),
                  QuickFacts(constraints),
                ],
              );
            } else {
              return Column(
                // desktop view
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  AutoSizeText(
                    "Originating from Oklahoma City, I strive to further my knowledge in aviation and technology",
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: "Poppins",
                        color:
                            widget.buttonPushed == 0 && widget.buttonPushed != 2
                                ? Colors.transparent
                                : Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.25,
                  ),
                  QuickFacts(constraints),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
