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
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Icon(
              Icons.menu,
              color: Colors.black,
              size: 30,
            ),
          ),
          Container(
            child: AutoSizeText(
              "Jack Scherlag",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontFamily: "Poppins",
              ),
              textAlign: TextAlign.center,
              presetFontSizes: [
                50.0,
                40.0,
                30.0,
                25.0,
                20.0,
                15.0,
                12.0,
                10.0,
                8.0
              ],
            ),
            color: Colors.black.withOpacity(0.0),
            width: MediaQuery.of(context).size.width,
          )
        ],
      ),
    );
  }
}
