import 'package:auto_size_text/auto_size_text.dart';
import "package:flutter/material.dart";
import 'package:url_launcher/url_launcher.dart';

class ProjectsDesktop extends StatefulWidget {
  @override
  _ProjectsDesktopState createState() => _ProjectsDesktopState();
}

class _ProjectsDesktopState extends State<ProjectsDesktop> {
  var titleGroupDesktop = AutoSizeGroup();

  var descriptionDesktop = AutoSizeGroup();

  @override
  Widget build(BuildContext context) {
    return ListView(
      cacheExtent: 2000,
      children: [
        SizedBox(
          height: 50,
        ),
        Center(
          child: AutoSizeText(
            "Senior Thesis\nStabilizing Metal Anodes in Perovskite LEDs",
            group: titleGroupDesktop,
            stepGranularity: 1.0,
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
              image: AssetImage("assets/images/thesis_poster.png"),
              width: MediaQuery.of(context).size.width * 0.5,
              fit: BoxFit.cover,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              child: AutoSizeText(
                "My senior thesis focuses on stabilizing and improving perovskite LEDS (PeLEDs). Bottom-emitting PeLEDS (BEPLEDS) are more stable than top-emitting PeLEDS (TEPLEDs) but have a lower theoretical efficiency. I am investigating the use of blocking layers in TEPLEDs to improve stability. ",
                group: descriptionDesktop,
                overflow: TextOverflow.clip,
                stepGranularity: 1.0,
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
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width * 0.5,
          child: InkWell(
            onTap: () => launch(
                "https://drive.google.com/file/d/1oE6N9I6cSaTvloNJWA2Y_tCyyROzbLQ8/view?usp=sharing"),
            child: AutoSizeText(
              "Full Poster",
              stepGranularity: 1,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: "Poppins",
                  decoration: TextDecoration.underline),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.07,
        ),
        Center(
          child: AutoSizeText(
            "Summer 2021\nNCAR Earth Observing Laboratory Internship",
            group: titleGroupDesktop,
            stepGranularity: 1,
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
                "While working with the Integrated Surface Flux Systems (ISFS) team, I developed a software library for a TI ADC and analyzed readings for determining stability and temperature dependence. My efforts led to the replacement of the old board. I presented my findings in a poster presentation at the end of the internship.",
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
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width * 0.5,
          child: InkWell(
            onTap: () => launch(
                "https://docs.google.com/file/d/1TDqsdvy7UHorm1uGunyxBrsKmqOhIKET/edit?usp=docslist_api&filetype=mspresentation"),
            child: AutoSizeText(
              "Full Poster",
              stepGranularity: 1,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: "Poppins",
                  decoration: TextDecoration.underline),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.07,
        ),
        Center(
          child: AutoSizeText(
            "Spring 2021\nRobotics and Autonomous Systems Lab",
            group: titleGroupDesktop,
            stepGranularity: 1,
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
                stepGranularity: 1.0,
                maxLines: 12,
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
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width * 0.5,
          child: InkWell(
            onTap: () => launch(
                "https://drive.google.com/file/d/19TfCtCOZykakoqS9qnRZ4IJUvNz0YJzH/view?usp=sharing"),
            child: AutoSizeText(
              "Navigation Demo",
              stepGranularity: 1.0,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: "Poppins",
                  decoration: TextDecoration.underline),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.10,
        ),
      ],
    );
  }
}
