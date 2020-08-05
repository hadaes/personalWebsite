import "package:flutter/cupertino.dart";
import "package:flutter/services.dart" show rootBundle;
import "package:auto_size_text/auto_size_text.dart";
import 'package:personalWebsite/widgets/infographics.dart';
import 'package:personalWebsite/widgets/text_screen.dart';

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
    return CupertinoPageScaffold(
      child: ListView(
        children: <Widget>[
          Container(
            child: Center(
              child: AutoSizeText(
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
            width: MediaQuery.of(context).size.width,
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
            children: <Widget>[
              Container(
                color: CupertinoColors.darkBackgroundGray,
                height: MediaQuery.of(context).size.height,
              ),
              Column(
                children: <Widget>[
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
                      child: AutoSizeText(
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
                    children: <Widget>[
                      // left side
                      TextScreen(
                        texts: texts,
                      ),
                      // right side
                      Infographics(),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Container(
            color: CupertinoColors.extraLightBackgroundGray,
            height: MediaQuery.of(context).size.height * 0.15,
            child: Center(
              child: AutoSizeText(
                "Copyright © Jack Scherlag 2020",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
