import 'package:auto_size_text/auto_size_text.dart';
import "package:flutter/material.dart";

class SiteDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AutoSizeText(
        "This website was built with Flutter and is hosted on Firebase",
        style:
            TextStyle(fontSize: 30, fontFamily: "Poppins", color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }
}