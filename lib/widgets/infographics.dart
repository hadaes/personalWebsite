import "package:flutter/cupertino.dart";
import "package:flutter/services.dart" show rootBundle;
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
          color: CupertinoColors.white,
          height: MediaQuery.of(context).size.height * 0.9,
          width: MediaQuery.of(context).size.width * 0.5,
        ),
        Positioned.fill(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.16,
                decoration: BoxDecoration(
                  color: CupertinoColors.black,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: AutoSizeText(
                    ">600 Flight Hours",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: CupertinoColors.white,
                    ),
                    maxFontSize: 25.0,
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.16,
                child: Center(
                  child: AutoSizeText(
                    "1 US Patent",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: CupertinoColors.white,
                    ),
                    maxFontSize: 25.0,
                  ),
                ),
                decoration: BoxDecoration(
                  color: CupertinoColors.black,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.16,
                child: Center(
                  child: AutoSizeText(
                    "Multi-instrumentalist",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: CupertinoColors.white,
                    ),
                    maxFontSize: 25.0,
                    presetFontSizes: [25.0, 20.0, 15.0, 10.0],
                    maxLines: 2,
                  ),
                ),
                decoration: BoxDecoration(
                  color: CupertinoColors.black,
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
