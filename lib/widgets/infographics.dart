import "package:flutter/material.dart";
import "package:auto_size_text/auto_size_text.dart";

class Infographics extends StatefulWidget {
  @override
  _InfographicsState createState() => _InfographicsState();
}

class _InfographicsState extends State<Infographics> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.transparent,
          height: MediaQuery.of(context).size.height * 0.9,
          width: MediaQuery.of(context).size.width * 0.5,
        ),
        Positioned.fill(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.8),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.09,
                      alignment: Alignment.center,
                      child: AutoSizeText(
                        ">600 Flight Hours",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        maxFontSize: 25.0,
                        presetFontSizes: [25.0, 20.0, 15.0, 10.0],
                        maxLines: 3,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: Center(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.09,
                      alignment: Alignment.center,
                      child: AutoSizeText(
                        "1 US Patent",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        maxFontSize: 25.0,
                        presetFontSizes: [25.0, 20.0, 15.0, 10.0],
                        maxLines: 2,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.8),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: Center(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.09,
                      alignment: Alignment.center,
                      child: AutoSizeText(
                        "Multi-instrumentalist",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        maxFontSize: 25.0,
                        presetFontSizes: [25.0, 20.0, 15.0, 10.0],
                        maxLines: 2,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.8),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
