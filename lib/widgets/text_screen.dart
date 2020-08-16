import "package:flutter/cupertino.dart";
import "package:auto_size_text/auto_size_text.dart";

class TextScreen extends StatefulWidget {
  @override
  final List<String> texts;
  TextScreen({this.texts});
  _TextScreenState createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CupertinoColors.black,
      height: MediaQuery.of(context).size.height * 0.9,
      width: MediaQuery.of(context).size.width * 0.5,
      child: Center(
        child: AutoSizeText(
          "${widget.texts[0]}",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: CupertinoColors.white,
          ),
          maxFontSize: 20.0,
        ),
      ),
    );
  }
}
