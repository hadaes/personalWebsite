import 'package:auto_size_text/auto_size_text.dart';
import "package:flutter/material.dart";
import 'package:url_launcher/url_launcher.dart';

class ProjectsDesktop extends StatelessWidget {
  var titleGroupDesktop = AutoSizeGroup();
  var descriptionDesktop = AutoSizeGroup();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 50,
        ),
        Center(
          child: AutoSizeText(
            "Summer 2021\nNCAR Earth Observing Laboratory Internship",
            group: titleGroupDesktop,
            style: TextStyle(
              fontSize: 30,
              fontFamily: "Poppins",
              color: Colors.white,
              fontWeight: FontWeight.bold,
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
                "While working with the Integrated Surface Flux Systems (ISFS) team, I developed a software library for a TI ADC and analyzed readings for determining stability and temperature dependence. My efforts on the group's circuit board for converting analog sensor information to a digital format led to the replacement of the old board",
                group: descriptionDesktop,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontFamily: "Poppins",
                  color: Colors.white,
                  fontSize: 25,
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
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Center(
          child: AutoSizeText(
            "Spring 2021\nRobotics and Autonomous Systems Lab",
            group: titleGroupDesktop,
            style: TextStyle(
              fontSize: 30,
              fontFamily: "Poppins",
              color: Colors.white,
              fontWeight: FontWeight.bold,
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
                "Over the course of a semester, I worked on developing autonomous hardware and software for a RC car\nStage 1 - Speed Control: Accomplished using Hall effect sensor and PID controller \nStage 2 - Track Navigation: Car centered on line using voltage levels from analog video \nStage 3 - Dynamic Navigation: PixyCam provided object detection and custom H-bridge allowed for reverse movement ",
                group: descriptionDesktop,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontFamily: "Poppins",
                  color: Colors.white,
                  fontSize: 25,
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
}
