import 'package:auto_size_text/auto_size_text.dart';
import "package:flutter/material.dart";
import 'package:personalWebsite/widgets/timeline.dart';
import 'package:timelines/timelines.dart';

class SiteDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Center(
          child: AutoSizeText(
            "This website was built with Flutter and is hosted on Firebase",
            style: TextStyle(
              fontSize: 30,
              fontFamily: "Poppins",
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: AutoSizeText(
                  "Early Concepts",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Image(
                      image: AssetImage(
                        "assets/images/primary.jpeg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Image(
                      image: AssetImage(
                        "assets/images/primary.jpeg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  TimelineTile(
                    oppositeContents: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('opposite\ncontents'),
                    ),
                    contents: Card(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Text('contents'),
                      ),
                    ),
                    node: TimelineNode(
                      indicator: DotIndicator(),
                      startConnector: SolidLineConnector(),
                      endConnector: SolidLineConnector(),
                    ),
                  ),
                  SizedBox(
                    height: 80.0,
                    child: TimelineNode(
                      indicator: Card(
                        margin: EdgeInsets.zero,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Complex'),
                        ),
                      ),
                      startConnector: DashedLineConnector(),
                      endConnector: SolidLineConnector(),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
