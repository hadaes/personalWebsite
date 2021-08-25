import 'package:auto_size_text/auto_size_text.dart';
import "package:flutter/material.dart";

class SiteMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
      child: Center(
        child: AutoSizeText(
          "This website was built with Flutter and is hosted on Firebase",
          presetFontSizes: [25, 20, 15, 10],
          style: TextStyle(color: Colors.white, fontFamily: "Poppins"),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
