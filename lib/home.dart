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
              fit: BoxFit.cover),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: AutoSizeText(
                "Jack Scherlag",
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: Colors.transparent,
            ),
            drawer: Drawer(),
          )
        ],
      ),
    );
  }
}
