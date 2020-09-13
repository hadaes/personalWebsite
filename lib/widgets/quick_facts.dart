import 'package:auto_size_text/auto_size_text.dart';
import "package:flutter/material.dart";
import "package:percent_indicator/percent_indicator.dart";

class QuickFacts extends StatelessWidget {
  var factsGroup = AutoSizeGroup();

  final BoxConstraints cts;

  QuickFacts(this.cts);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, cts) {
        if (cts.maxWidth <= 600 || cts.maxHeight <= 600) {
          return Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              CircularPercentIndicator(
                backgroundColor: Colors.transparent,
                radius: MediaQuery.of(context).size.width * 0.5,
                center: AutoSizeText(
                  ">600 Flight Hours",
                  maxLines: 1,
                  group: factsGroup,
                  presetFontSizes: [25, 20, 15, 10, 5],
                  style: TextStyle(color: Colors.white, fontFamily: "Poppins"),
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
                radius: MediaQuery.of(context).size.width * 0.5,
                center: AutoSizeText(
                  "1 US Patent",
                  maxLines: 1,
                  group: factsGroup,
                  presetFontSizes: [25, 20, 15, 10, 5],
                  style: TextStyle(color: Colors.white, fontFamily: "Poppins"),
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
                radius: MediaQuery.of(context).size.width * 0.5,
                center: AutoSizeText(
                  "1 Paper Coauthored",
                  maxLines: 1,
                  group: factsGroup,
                  presetFontSizes: [25, 20, 15, 10, 5],
                  style: TextStyle(color: Colors.white, fontFamily: "Poppins"),
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
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircularPercentIndicator(
                backgroundColor: Colors.transparent,
                radius: MediaQuery.of(context).size.width * 0.25,
                center: AutoSizeText(
                  ">600 Flight Hours",
                  maxLines: 1,
                  group: factsGroup,
                  presetFontSizes: [25, 20, 15, 10, 5],
                  style: TextStyle(color: Colors.white, fontFamily: "Poppins"),
                ),
                animation: true,
                animationDuration: 1200,
                startAngle: 0.0,
                percent: 1.0,
                progressColor: Colors.black,
              ),
              CircularPercentIndicator(
                backgroundColor: Colors.transparent,
                radius: MediaQuery.of(context).size.width * 0.25,
                center: AutoSizeText(
                  "1 US Patent",
                  maxLines: 1,
                  group: factsGroup,
                  presetFontSizes: [25, 20, 15, 10, 5],
                  style: TextStyle(color: Colors.white, fontFamily: "Poppins"),
                ),
                animation: true,
                animationDuration: 1200,
                startAngle: 0.0,
                percent: 1.0,
                progressColor: Colors.black,
              ),
              CircularPercentIndicator(
                backgroundColor: Colors.transparent,
                radius: MediaQuery.of(context).size.width * 0.25,
                center: AutoSizeText(
                  "1 Paper Coauthored",
                  maxLines: 1,
                  group: factsGroup,
                  presetFontSizes: [25, 20, 15, 10, 5],
                  style: TextStyle(color: Colors.white, fontFamily: "Poppins"),
                ),
                animation: true,
                animationDuration: 1200,
                startAngle: 0.0,
                percent: 1.0,
                progressColor: Colors.black,
              )
            ],
          );
        }
      },
    );
  }
}
