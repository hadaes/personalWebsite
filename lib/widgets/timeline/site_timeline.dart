import "package:flutter/material.dart";
import 'package:personalWebsite/widgets/timeline/timeline_desktop.dart';
import 'package:personalWebsite/widgets/timeline/timeline_mobile.dart';

class SiteTimeline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, cts) {
      if (cts.maxWidth <= 600 || cts.maxHeight <= 600) {
        return TimelineMobile();
      } else {
        return TimelineDesktop();
      }
    });
  }
}
