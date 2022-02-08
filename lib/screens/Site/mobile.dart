import 'package:auto_size_text/auto_size_text.dart';
import "package:flutter/material.dart";
import 'package:personalWebsite/widgets/timeline/site_timeline.dart';

class SiteMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.1,
          padding: EdgeInsets.symmetric(
            horizontal: 5.0,
          ),
          child: Center(
            child: AutoSizeText(
              "This website was built with Flutter and is hosted on Firebase",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Poppins",
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
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
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  height: MediaQuery.of(context).size.height * 0.05,
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
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Image(
                      image: AssetImage(
                        "assets/images/early_concept.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Image(
                      image: AssetImage(
                        "assets/images/early_concept_2.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.10,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          height: MediaQuery.of(context).size.height * 0.05,
          child: Center(
            child: AutoSizeText(
              "Timeline",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Poppins",
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SiteTimeline(),
      ],
    );
  }
}
