import 'package:auto_size_text/auto_size_text.dart';
import "package:flutter/material.dart";
import "package:percent_indicator/percent_indicator.dart";
import 'package:url_launcher/url_launcher.dart';

class QuickFacts extends StatefulWidget {
  final BoxConstraints cts;

  QuickFacts(this.cts);

  @override
  _QuickFactsState createState() => _QuickFactsState();
}

class _QuickFactsState extends State<QuickFacts> {
  var factsGroup = AutoSizeGroup();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, cts) {
        // -------------------- mobile view -------------------------------
        if (cts.maxWidth <= 900 || cts.maxHeight <= 900) {
          return Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              CircularPercentIndicator(
                backgroundColor: Colors.transparent,
                radius: MediaQuery.of(context).size.width * 0.35,
                center: InkWell(
                  child: AutoSizeText(
                    ">650 Flight Hours",
                    maxLines: 1,
                    group: factsGroup,
                    presetFontSizes: [25, 20, 15, 10, 5],
                    style:
                        TextStyle(color: Colors.white, fontFamily: "Poppins"),
                  ),
                  onTap: () =>
                      launch('https://www.youtube.com/watch?v=1HWufbhWjMI'),
                ),
                animation: true,
                animationDuration: 2000,
                startAngle: 0.0,
                percent: 1.0,
                progressColor: Colors.black,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              CircularPercentIndicator(
                backgroundColor: Colors.transparent,
                radius: MediaQuery.of(context).size.width * 0.35,
                center: InkWell(
                  child: AutoSizeText(
                    "1 US Patent",
                    minFontSize: 5,
                    maxLines: 1,
                    stepGranularity: 5,
                    group: factsGroup,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontSize: 25),
                  ),
                  onTap: () => launch(
                      'https://patents.google.com/patent/US10488064B1/en'),
                ),
                animation: true,
                animationDuration: 2000,
                startAngle: 0.0,
                percent: 1.0,
                progressColor: Colors.black,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              CircularPercentIndicator(
                backgroundColor: Colors.transparent,
                radius: MediaQuery.of(context).size.width * 0.35,
                center: InkWell(
                  child: AutoSizeText(
                    "1 Paper Coauthored",
                    minFontSize: 5,
                    maxLines: 1,
                    group: factsGroup,
                    presetFontSizes: [25, 20, 15, 10, 5],
                    style:
                        TextStyle(color: Colors.white, fontFamily: "Poppins"),
                  ),
                  onTap: () => launch(
                      'https://www.semanticscholar.org/paper/Seeds-as-a-Source-of-Plant-Inhibitory-Fungi%3A-for-Scherlag-Scherlag/64098cbc8fe4a3b1c865b0f14420fa0c689725be'),
                ),
                animation: true,
                animationDuration: 2000,
                startAngle: 0.0,
                percent: 1.0,
                progressColor: Colors.black,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
            ],
          );
        } else {
          // --------------- desktop view -------------------------------------
          return Container(
            height: MediaQuery.of(context).size.width * 0.50,
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: CircularPercentIndicator(
                    backgroundColor: Colors.transparent,
                    radius: MediaQuery.of(context).size.width * 0.15,
                    center: InkWell(
                      child: AutoSizeText(
                        ">650 Flight Hours",
                        stepGranularity: 5.0,
                        minFontSize: 5,
                        maxLines: 1,
                        group: factsGroup,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontSize: 25),
                      ),
                      onTap: () =>
                          launch('https://www.youtube.com/watch?v=1HWufbhWjMI'),
                    ),
                    animation: true,
                    animationDuration: 1200,
                    startAngle: 0.0,
                    percent: 1.0,
                    progressColor: Colors.black,
                  ),
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: CircularPercentIndicator(
                    backgroundColor: Colors.transparent,
                    radius: MediaQuery.of(context).size.width * 0.15,
                    center: InkWell(
                      child: AutoSizeText(
                        "1 US Patent",
                        stepGranularity: 5.0,
                        minFontSize: 5,
                        maxLines: 1,
                        group: factsGroup,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontSize: 25),
                      ),
                      onTap: () => launch(
                          'https://patents.google.com/patent/US10488064B1/en'),
                    ),
                    animation: true,
                    animationDuration: 1200,
                    startAngle: 0.0,
                    percent: 1.0,
                    progressColor: Colors.black,
                  ),
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: CircularPercentIndicator(
                    backgroundColor: Colors.transparent,
                    radius: MediaQuery.of(context).size.width * 0.15,
                    center: InkWell(
                      child: AutoSizeText(
                        "1 Paper Coauthored",
                        maxLines: 1,
                        stepGranularity: 5.0,
                        minFontSize: 5,
                        group: factsGroup,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontSize: 25),
                      ),
                      onTap: () => launch(
                          'https://www.semanticscholar.org/paper/Seeds-as-a-Source-of-Plant-Inhibitory-Fungi%3A-for-Scherlag-Scherlag/64098cbc8fe4a3b1c865b0f14420fa0c689725be'),
                    ),
                    animation: true,
                    animationDuration: 1200,
                    startAngle: 0.0,
                    percent: 1.0,
                    progressColor: Colors.black,
                  ),
                )
              ],
            ),
          );
        }
      },
    );
  }
}
