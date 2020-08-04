import "package:flutter/cupertino.dart";
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
                    children: <Widget>[
                      // left side
                      Container(
                        color: CupertinoColors.black,
                        height: MediaQuery.of(context).size.height * 0.9,
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Center(
                          child: Text(
                            "${texts[0]}",
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
                            "${texts[1]}",
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
              ),
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
