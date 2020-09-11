import 'package:auto_size_text/auto_size_text.dart';
import "package:flutter/material.dart";
import "package:percent_indicator/percent_indicator.dart";

class QuickFacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircularPercentIndicator(
          backgroundColor: Colors.transparent,
          radius: MediaQuery.of(context).size.width * 0.25,
          center: AutoSizeText(
            ">600 Flight Hours",
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
}
