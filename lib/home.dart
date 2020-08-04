import 'dart:html';
import "package:flutter/cupertino.dart";
import "dart:math";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: ListView(
        children: <Widget>[
          Container(
            child: Center(
              child: Text(
                "Jack Scherlag",
                style: TextStyle(
                  color: CupertinoColors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
            color: CupertinoColors.black,
            height: MediaQuery.of(context).size.height * 0.08,
          ),
          Container(
            width: (MediaQuery.of(context).size.width),
            color: CupertinoTheme.of(context).primaryColor,
            child: Center(
              child: Image(
                image: AssetImage(
                  "assets/images/placeholder.jpg",
                ),
              ),
            ),
          ),
          Stack(
            children: [
              Container(
                color: CupertinoColors.darkBackgroundGray,
                height: MediaQuery.of(context).size.height,
              ),
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: CupertinoColors.black,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: CupertinoColors.white,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "About",
                        style: TextStyle(
                          color: CupertinoColors.white,
                          letterSpacing: 3.0,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // left side
                      Container(
                        color: CupertinoColors.black,
                        height: MediaQuery.of(context).size.height * 0.9,
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Center(
                          child: Text(
                            "Jack Scherlag is a Princeton Undergraduate",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: CupertinoColors.white,
                            ),
                          ),
                        ),
                      ),
                      // right side
                      Container(
                        color: CupertinoColors.white,
                        height: MediaQuery.of(context).size.height * 0.9,
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Center(
                          child: Text(
                            "Information",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: CupertinoColors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          Container(
            color: CupertinoColors.extraLightBackgroundGray,
            height: MediaQuery.of(context).size.height * 0.15,
            child: Center(
              child: Text(
                "Copyright Jack Scherlag 2020",
              ),
            ),
          ),
        ],
      ),
    );
  }
}