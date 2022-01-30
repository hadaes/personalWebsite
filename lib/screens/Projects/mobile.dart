import 'package:auto_size_text/auto_size_text.dart';
import "package:flutter/material.dart";
import 'package:url_launcher/url_launcher.dart';

class ProjectsMobile extends StatefulWidget {
  @override
  _ProjectsMobileState createState() => _ProjectsMobileState();
}

class _ProjectsMobileState extends State<ProjectsMobile> {
  var titleGroupMobile = AutoSizeGroup();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.1,
          child: AutoSizeText(
            "Senior Thesis\nStabilizing Metal Anodes in Perovskite LEDs",
            stepGranularity: 1.0,
            style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
        ),
        Center(
          child: Image(
            image: AssetImage("assets/images/thesis_poster.png"),
            width: MediaQuery.of(context).size.width * 0.9,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width * 0.5,
          child: InkWell(
            onTap: () => launch(
                "https://drive.google.com/file/d/1oE6N9I6cSaTvloNJWA2Y_tCyyROzbLQ8/view?usp=sharing"),
            child: AutoSizeText(
              "Full Poster",
              stepGranularity: 1.0,
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontFamily: "Poppins",
                  decoration: TextDecoration.underline),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          margin: EdgeInsets.all(5.0),
          child: AutoSizeText(
            "My senior thesis focuses on stabilizing and improving perovskite LEDS (PeLEDs). Bottom-emitting PeLEDS (BEPLEDS) are more stable than top-emitting PeLEDS (TEPLEDs) but have a lower theoretical efficiency. I am investigating the use of blocking layers in TEPLEDs to improve stability. ",
            overflow: TextOverflow.clip,
            style: TextStyle(
              fontFamily: "Poppins",
              color: Colors.white,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.1,
          child: AutoSizeText(
            "Summer 2021\nNCAR EOL Internship",
            group: titleGroupMobile,
            stepGranularity: 1.0,
            style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
        ),
        Center(
          child: Image(
            image: AssetImage("assets/images/NCAR_poster.png"),
            width: MediaQuery.of(context).size.width * 0.9,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width * 0.5,
          child: InkWell(
            onTap: () => launch(
                "https://docs.google.com/file/d/1TDqsdvy7UHorm1uGunyxBrsKmqOhIKET/edit?usp=docslist_api&filetype=mspresentation"),
            child: AutoSizeText(
              "Full Poster",
              stepGranularity: 1.0,
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontFamily: "Poppins",
                  decoration: TextDecoration.underline),
            ),
          ),
        ),
        // SizedBox(
        //   height: MediaQuery.of(context).size.height * 0.001,
        // ),
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          margin: EdgeInsets.all(5.0),
          child: AutoSizeText(
            "While working with the Integrated Surface Flux Systems (ISFS) team, I developed a software library for a TI ADC and analyzed readings for determining stability and temperature dependence. My efforts led to the replacement of the old board. I presented my findings in a poster presentation at the end of the internship.",
            overflow: TextOverflow.clip,
            style: TextStyle(
              fontFamily: "Poppins",
              color: Colors.white,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Center(
          child: AutoSizeText(
            "Spring 2021\nAutonomous Systems Lab",
            group: titleGroupMobile,
            stepGranularity: 1.0,
            style: TextStyle(
              fontSize: 25,
              fontFamily: "Poppins",
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Center(
          child: Image(
            image: AssetImage("assets/images/robot.jpeg"),
            width: MediaQuery.of(context).size.width * 0.9,
            fit: BoxFit.cover,
          ),
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
                  fontSize: 15,
                  color: Colors.white,
                  fontFamily: "Poppins",
                  decoration: TextDecoration.underline),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          margin: EdgeInsets.all(5.0),
          child: AutoSizeText(
            "Over the course of a semester, I worked on developing autonomous hardware and software for a RC car.\nStage 1 - Speed Control: Accomplished using Hall effect sensor and PID controller.\nStage 2 - Track Navigation: Car centered on line using voltage levels from analog video.\nStage 3 - Dynamic Navigation: PixyCam provided object detection and custom H-bridge allowed for reverse movement.",
            overflow: TextOverflow.clip,
            style: TextStyle(
              fontFamily: "Poppins",
              color: Colors.white,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.10,
        ),
      ],
    );
  }
}
