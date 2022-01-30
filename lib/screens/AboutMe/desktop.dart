import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import "package:flutter/material.dart";
import 'package:personalWebsite/widgets/quick_facts.dart';

class AboutMeDesktop extends StatelessWidget {
  BoxConstraints constraints;

  AboutMeDesktop(this.constraints);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(
        children: [
          SizedBox(
            height: 10,
          ),
          const AutoSizeText(
            "Originating from Oklahoma City, I am a senior at Princeton University studying computer engineering",
            style: TextStyle(
              fontSize: 30,
              fontFamily: "Poppins",
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
          ),
          QuickFacts(constraints),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
          ),
          CarouselSlider(
            items: [
              const Image(image: AssetImage("assets/images/jack_plane.jpeg")),
              const Image(image: AssetImage("assets/images/jack_plane2.jpeg")),
              const Image(image: AssetImage("assets/images/jack_plane3.jpeg")),
              const Image(image: AssetImage("assets/images/jack_plane3.jpeg")),
              const Image(image: AssetImage("assets/images/jack_middle.JPG")),
            ],
            options: CarouselOptions(
              autoPlay: true,
            ),
          )
        ],
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.05,
      )
    ]);
  }
}
