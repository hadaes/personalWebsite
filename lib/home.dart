import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:personalWebsite/screens/aboutme.dart';
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
            body: AboutMe(buttonPushed: buttonPushed),
            appBar: AppBar(
              title: GestureDetector(
                onTap: () {
                  setState(() {
                    buttonPushed = 0;
                  });
                },
                child: AutoSizeText(
                  "Jack Scherlag",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold),
                ),
              ),
              backgroundColor: Colors.transparent,
            ),
            drawer: Theme(
              data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.20,
                child: Drawer(
                  elevation: 50,
                  child: ListView(
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
                              presetFontSizes: [20, 15, 13, 12, 11, 10, 9],
                              maxLines: 1,
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Center(
                          child: FlatButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: AutoSizeText(
                              "About This Site",
                              presetFontSizes: [20, 15, 13, 12, 11, 10, 9],
                              maxLines: 2,
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height - 300,
                      ),
                      GestureDetector(
                        onTap: () {
                          _launchURL();
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.web,
                          size: 100,
                        ),
                      ) //replace with github icon
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
