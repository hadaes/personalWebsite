import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import "package:flutter/material.dart";
import 'package:personalWebsite/widgets/quick_facts.dart';

class AboutMeMobile extends StatelessWidget {
  BoxConstraints constraints;

  AboutMeMobile(this.constraints);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 10,
        ),
        const AutoSizeText(
          "Originating from Oklahoma City, I am a senior at Princeton University studying computer engineering",
          presetFontSizes: [25, 20, 15, 10],
          style: TextStyle(color: Colors.white, fontFamily: "Poppins"),
          textAlign: TextAlign.center,
        ),
        QuickFacts(constraints),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        CarouselSlider(
          items: [
            const Image(image: AssetImage("assets/images/jack_plane.jpeg")),
            const Image(image: AssetImage("assets/images/jack_plane2.jpeg")),
            const Image(image: AssetImage("assets/images/jack_plane3.jpeg")),
          ],
          options: CarouselOptions(
              // height: MediaQuery.of(context).size.height * 0.35, // leave out for now to keep photos same size
              ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
        ),
      ],
    );
  }
}
