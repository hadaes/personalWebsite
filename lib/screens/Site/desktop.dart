import 'package:auto_size_text/auto_size_text.dart';
import "package:flutter/material.dart";
import 'package:personalWebsite/widgets/timeline/site_timeline.dart';

class SiteDesktop extends StatefulWidget {
  @override
  _SiteDesktopState createState() => _SiteDesktopState();
}

class _SiteDesktopState extends State<SiteDesktop> {
  var subTitleGroup = AutoSizeGroup();

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
            textAlign: TextAlign.center,
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
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.25,
              child: Center(
                child: AutoSizeText(
                  "Early Concepts",
                  maxLines: 1,
                  group: subTitleGroup,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Image(
                    image: AssetImage(
                      "assets/images/early_concept.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
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
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.05,
          width: MediaQuery.of(context).size.width * 0.25,
          child: Center(
            child: AutoSizeText(
              "Timeline",
              group: subTitleGroup,
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
        SiteTimeline(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.10,
        ),
      ],
    );
  }
}
