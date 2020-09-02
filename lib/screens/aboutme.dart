import "package:flutter/material.dart";

class AboutMe extends StatefulWidget {
  int buttonPushed;

  AboutMe({this.buttonPushed});

  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> with SingleTickerProviderStateMixin {
  // add layout builder

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      color: widget.buttonPushed == 0
          ? Colors.transparent
          : Colors.transparent.withOpacity(0.3),
      duration: Duration(seconds: 1),
      child: widget.buttonPushed == 0
          ? Container()
          : LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth < 600) {
                return Center(
                  child: Text(
                    "Hi",
                    style: TextStyle(color: Colors.white),
                  ),
                );
              } else {
                return Center(
                  child: Text(
                    "Originating from Oklahoma City, I strive to further my knowledge in aviation and technology",
                    style: TextStyle(
                        fontSize: 30,
                        color: widget.buttonPushed == 0
                            ? Colors.transparent
                            : Colors.white),
                  ),
                );
              }
            }),
    );
  }
}
