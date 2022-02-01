//import 'package:auto_size_text/auto_size_text.dart';
import "package:flutter/material.dart";
import 'package:timelines/timelines.dart';

class WebTimeLine extends StatefulWidget {
  @override
  _WebTimeLineState createState() => _WebTimeLineState();
}

class _WebTimeLineState extends State<WebTimeLine> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Timeline.tileBuilder(
        builder: TimelineTileBuilder.fromStyle(
          contentsAlign: ContentsAlign.alternating,
          contentsBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text('Timeline Event $index'),
          ),
          itemCount: 10,
        ),
      ),
    );
  }
}
