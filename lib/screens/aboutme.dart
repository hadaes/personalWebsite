import "package:flutter/material.dart";

class AboutMe extends StatefulWidget {
  int buttonPushed;

  AboutMe({this.buttonPushed});

  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 8));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
  }

  // add layout builder
  @override
  Widget build(BuildContext context) {
    _controller.forward();
    return AnimatedContainer(
      color: widget.buttonPushed == 0
          ? Colors.transparent
          : Colors.transparent.withOpacity(0.3),
      duration: Duration(seconds: 1),
      child: widget.buttonPushed == 0
          ? Container()
          : Center(
              child: FadeTransition(
                opacity: _animation,
                child: Text(
                  "I am jack scherlag",
                  style: TextStyle(
                      fontSize: 30,
                      color: widget.buttonPushed == 0
                          ? Colors.transparent
                          : Colors.white),
                ),
              ),
            ),
    );
  }
}
