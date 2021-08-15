import 'package:auto_size_text/auto_size_text.dart';
import "package:flutter/material.dart";
import 'package:url_launcher/url_launcher.dart';

// Body content for About This Site page

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
              // ---------------------- mobile view --------------------------
              return Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: Center(
                  child: AutoSizeText(
                    "This website was built with Flutter and is hosted on Firebase",
                    presetFontSizes: [25, 20, 15, 10],
                    style:
                        TextStyle(color: Colors.white, fontFamily: "Poppins"),
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            } else {
              // ------------------------------ desktop view --------------------
              return ListView(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: AutoSizeText(
                      "Summer 2021\nNCAR Earth Observing Laboratory Internship",
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: "Poppins",
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(
                        image: AssetImage("assets/images/NCAR_poster.png"),
                        width: MediaQuery.of(context).size.width * 0.5,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: AutoSizeText(
                          "While working with the Integrated Surface Flux Systems (ISFS) team, I developed a software library for a TI ADC and analyzed readings for determining stability and temperature dependence. My efforts on the group's board for converting analog sensor information to a digital format led to a prototype entering production. ",
                          presetFontSizes: [30, 25, 20, 15, 12],
                          maxLines: 8,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontFamily: "Poppins",
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: InkWell(
                      onTap: () => launch(
                          "https://docs.google.com/file/d/1TDqsdvy7UHorm1uGunyxBrsKmqOhIKET/edit?usp=docslist_api&filetype=mspresentation"),
                      child: AutoSizeText(
                        "Full Poster",
                        presetFontSizes: [20, 15, 12],
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.10,
                  ),
                  Center(
                    child: AutoSizeText(
                      "Spring 2021\nRobotics and Autonomous Systems Lab",
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: "Poppins",
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(
                        image: AssetImage("assets/images/robot.jpeg"),
                        width: MediaQuery.of(context).size.width * 0.5,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: AutoSizeText(
                          "Over the course of a semester, I worked on developing autonomous hardware and software for a RC car\nStage 1 - Speed Control: Accomplished using Hall effect sensor and PID controller \nStage 2 - Track Navigation: Car centered on line using voltage position from analog video \nStage 3 - Dynamic Navigation: PixyCam provided object detection and custom H-bridge allowed for reverse movement ",
                          presetFontSizes: [30, 28, 25, 20, 18, 15, 12],
                          maxLines: 8,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontFamily: "Poppins",
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.10,
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
