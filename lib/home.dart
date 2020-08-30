import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import "package:flutter/services.dart" show rootBundle;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final int textAssetCount = 2;

  List<String> texts = new List(2);

  Future<List<String>> loadAsset() async {
    List<String> assetTexts = new List(textAssetCount);
    for (int i = 0; i < textAssetCount; i++) {
      assetTexts[i] = await rootBundle.loadString("assets/text/info-$i.txt");
    }
    return assetTexts;
  }

  @override
  void initState() {
    loadAsset().then((value) {
      setState(() {
        texts = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
              image: AssetImage("assets/images/heli.jpeg"),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover),
          Scaffold(
            drawerScrimColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: AutoSizeText(
                "Jack Scherlag",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold),
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
                          child: GestureDetector(
                            onTap: () {
                              print("clicked");
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
                          child: GestureDetector(
                            onTap: () {
                              print("clicked");
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
                          print("clicked");
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
          )
        ],
      ),
    );
  }
}
