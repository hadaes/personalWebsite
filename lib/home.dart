import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:personalWebsite/widgets/body_controller.dart';
import "package:url_launcher/url_launcher.dart";

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int buttonPushed = 0;

  _launchURL() async {
    const url = 'https://github.com/hadaes';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  var myGroup = AutoSizeGroup();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FadeInImage(
              image: AssetImage("assets/images/heli.jpeg"),
              placeholder: AssetImage("assets/images/primary.jpeg"),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover),
          Scaffold(
            drawerScrimColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            body: BodyController(buttonPushed),
            appBar: AppBar(
              title: GestureDetector(
                onTap: () {
                  setState(() {
                    buttonPushed = 0;
                  });
                },
                child: AutoSizeText(
                  "Jack Scherlag",
                  presetFontSizes: [22, 20, 18, 15],
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      letterSpacing: 5),
                ),
              ),
              backgroundColor: Colors.transparent,
            ),
            drawer: Theme(
              data: Theme.of(context).copyWith(canvasColor: Colors.white),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth > 600) {
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.20,
                      child: Drawer(
                        elevation: 50,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 63, //approximate size of appbar
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                              child: Center(
                                child: FlatButton(
                                  onPressed: () {
                                    setState(() {
                                      buttonPushed = 1;
                                    });
                                    Navigator.pop(context);
                                  },
                                  child: AutoSizeText(
                                    "About Me",
                                    presetFontSizes: [22, 20, 15, 14],
                                    maxLines: 2,
                                    group: myGroup,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1.1,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              child: Center(
                                child: FlatButton(
                                  onPressed: () {
                                    setState(() {
                                      buttonPushed = 2;
                                    });
                                    Navigator.pop(context);
                                  },
                                  child: AutoSizeText(
                                    "About This Site",
                                    presetFontSizes: [22, 20, 15, 14],
                                    maxLines: 2,
                                    group: myGroup,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1.1,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height - 325,
                            ),
                            GestureDetector(
                              onTap: () {
                                _launchURL();
                                Navigator.pop(context);
                              },
                              child: Icon(
                                FontAwesome.github,
                                size: 65,
                              ),
                            ),
                            Container(
                              color: Colors.transparent,
                              child: AutoSizeText(
                                "Copyright © 2020 Jack Scherlag",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontFamily: "Poppins"),
                              ),
                              alignment: Alignment.bottomCenter,
                            ),
                          ],
                        ),
                      ),
                    );
                  } else if (constraints.maxWidth <= 600) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      child: Drawer(
                        elevation: 50,
                        child: Column(
                          children: [
                            Center(
                              child: FlatButton(
                                onPressed: () {
                                  setState(() {
                                    buttonPushed = 1;
                                  });
                                  Navigator.pop(context);
                                },
                                child: AutoSizeText(
                                  "About Me",
                                  presetFontSizes: [22, 20, 15, 14, 9, 5],
                                  maxLines: 2,
                                  group: myGroup,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.1,
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: FlatButton(
                                onPressed: () {
                                  setState(() {
                                    buttonPushed = 2;
                                  });
                                  Navigator.pop(context);
                                },
                                child: AutoSizeText(
                                  "About This Site",
                                  presetFontSizes: [22, 20, 15, 14, 9, 5],
                                  maxLines: 2,
                                  group: myGroup,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.1,
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                _launchURL();
                                Navigator.pop(context);
                              },
                              child: Icon(
                                FontAwesome.github,
                                size: 40,
                              ),
                            ),
                            Container(
                              color: Colors.transparent,
                              child: AutoSizeText(
                                "Copyright © 2020 Jack Scherlag",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontFamily: "Poppins"),
                              ),
                              alignment: Alignment.bottomCenter,
                            ),
                          ],
                        ),
                      ),
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
