import 'package:auto_size_text/auto_size_text.dart';
import "package:flutter/material.dart";
import 'package:timeline_tile/timeline_tile.dart';

class SiteTimeline extends StatelessWidget {
  // final BoxConstraints cts;

  // SiteTimeline(this.cts);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, cts) {
      if (cts.maxWidth <= 900 || cts.maxHeight <= 900) {
        //---------------------------------Mobile View-------------------//
        return Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.90,
              height: MediaQuery.of(context).size.height * 0.30,
              child: TimelineTile(
                beforeLineStyle: LineStyle(color: Colors.transparent),
                afterLineStyle: LineStyle(color: Colors.white),
                axis: TimelineAxis.vertical,
                alignment: TimelineAlign.manual,
                lineXY: 0.5,
                indicatorStyle: IndicatorStyle(
                  color: Colors.green,
                  width: 50,
                  height: 50,
                  iconStyle: IconStyle(
                    color: Colors.white,
                    iconData: Icons.check,
                  ),
                ),
                startChild: Container(
                  alignment: Alignment.center,
                  constraints: BoxConstraints(
                    minWidth: MediaQuery.of(context).size.width * 0.5,
                  ),
                  child: AutoSizeText(
                    "July 30, 2020",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
                endChild: Container(
                  alignment: Alignment.center,
                  constraints: BoxConstraints(
                    minWidth: MediaQuery.of(context).size.width * 0.5,
                  ),
                  child: AutoSizeText(
                    "First Commit",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.90,
              height: MediaQuery.of(context).size.height * 0.30,
              child: TimelineTile(
                axis: TimelineAxis.vertical,
                alignment: TimelineAlign.manual,
                beforeLineStyle: LineStyle(
                  color: Colors.white,
                ),
                afterLineStyle: LineStyle(
                  color: Colors.white,
                ),
                lineXY: 0.5,
                indicatorStyle: IndicatorStyle(
                  color: Colors.yellow,
                  width: 50,
                  height: 50,
                  iconStyle: IconStyle(iconData: Icons.money_rounded),
                ),
                startChild: Container(
                  alignment: Alignment.center,
                  constraints: BoxConstraints(
                    minWidth: MediaQuery.of(context).size.width * 0.5,
                  ),
                  child: AutoSizeText(
                    "September 2, 2020",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
                endChild: Container(
                  alignment: Alignment.center,
                  constraints: BoxConstraints(
                    minWidth: MediaQuery.of(context).size.width * 0.5,
                  ),
                  child: AutoSizeText(
                    "Domain name purchased",
                    maxLines: 2,
                    stepGranularity: 2.0,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.90,
              height: MediaQuery.of(context).size.height * 0.30,
              child: TimelineTile(
                axis: TimelineAxis.vertical,
                alignment: TimelineAlign.manual,
                lineXY: 0.5,
                beforeLineStyle: LineStyle(
                  color: Colors.white,
                ),
                afterLineStyle: LineStyle(
                  color: Colors.white,
                ),
                indicatorStyle: IndicatorStyle(
                  width: 50,
                  height: 50,
                  color: Colors.lightBlue,
                  iconStyle: IconStyle(
                    iconData: Icons.backup,
                  ),
                ),
                startChild: Container(
                  alignment: Alignment.center,
                  constraints: BoxConstraints(
                    minWidth: MediaQuery.of(context).size.height * 0.5,
                  ),
                  child: AutoSizeText(
                    "September 4, 2020",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
                endChild: Container(
                  alignment: Alignment.center,
                  constraints: BoxConstraints(
                    minWidth: MediaQuery.of(context).size.height * 0.5,
                  ),
                  child: AutoSizeText(
                    "First Deployment",
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.90,
              height: MediaQuery.of(context).size.height * 0.30,
              child: TimelineTile(
                axis: TimelineAxis.vertical,
                alignment: TimelineAlign.manual,
                lineXY: 0.5,
                beforeLineStyle: LineStyle(color: Colors.white),
                afterLineStyle: LineStyle(
                  color: Colors.transparent,
                ),
                indicatorStyle: IndicatorStyle(
                  width: 50,
                  height: 50,
                  color: Colors.white,
                  iconStyle: IconStyle(
                    iconData: Icons.directions_run_rounded,
                  ),
                ),
                startChild: Container(
                  alignment: Alignment.center,
                  constraints: BoxConstraints(
                    minWidth: MediaQuery.of(context).size.width * 0.5,
                  ),
                  child: AutoSizeText(
                    "Today",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
                endChild: Container(
                  alignment: Alignment.center,
                  constraints: BoxConstraints(
                    minWidth: MediaQuery.of(context).size.height * 0.5,
                  ),
                  child: AutoSizeText(
                    "Still going!",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      } else {
        //---------------------------------Desktop View-------------------//
        return Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.25,
              height: MediaQuery.of(context).size.height * 0.15,
              child: TimelineTile(
                beforeLineStyle: LineStyle(color: Colors.transparent),
                afterLineStyle: LineStyle(color: Colors.white),
                axis: TimelineAxis.horizontal,
                alignment: TimelineAlign.manual,
                lineXY: 0.5,
                indicatorStyle: IndicatorStyle(
                  color: Colors.green,
                  width: 50,
                  height: 50,
                  iconStyle: IconStyle(
                    color: Colors.white,
                    iconData: Icons.check,
                  ),
                ),
                startChild: Container(
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height * 0.1,
                  ),
                  child: AutoSizeText(
                    "July 30, 2020",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
                endChild: Container(
                  alignment: Alignment.bottomCenter,
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height * 0.1,
                  ),
                  child: AutoSizeText(
                    "First Commit",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.25,
              height: MediaQuery.of(context).size.height * 0.15,
              child: TimelineTile(
                axis: TimelineAxis.horizontal,
                alignment: TimelineAlign.manual,
                beforeLineStyle: LineStyle(
                  color: Colors.white,
                ),
                afterLineStyle: LineStyle(
                  color: Colors.white,
                ),
                lineXY: 0.5,
                indicatorStyle: IndicatorStyle(
                  color: Colors.yellow,
                  width: 50,
                  height: 50,
                  iconStyle: IconStyle(iconData: Icons.money_rounded),
                ),
                startChild: Container(
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height * 0.1,
                  ),
                  child: AutoSizeText(
                    "September 2, 2020",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
                endChild: Container(
                  alignment: Alignment.bottomCenter,
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height * 0.1,
                  ),
                  child: AutoSizeText(
                    "Domain name purchased",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.25,
              height: MediaQuery.of(context).size.height * 0.15,
              child: TimelineTile(
                axis: TimelineAxis.horizontal,
                alignment: TimelineAlign.manual,
                lineXY: 0.5,
                beforeLineStyle: LineStyle(
                  color: Colors.white,
                ),
                afterLineStyle: LineStyle(
                  color: Colors.white,
                ),
                indicatorStyle: IndicatorStyle(
                  width: 50,
                  height: 50,
                  color: Colors.lightBlue,
                  iconStyle: IconStyle(
                    iconData: Icons.backup,
                  ),
                ),
                startChild: Container(
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height * 0.1,
                  ),
                  child: AutoSizeText(
                    "September 4, 2020",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
                endChild: Container(
                  alignment: Alignment.bottomCenter,
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height * 0.1,
                  ),
                  child: AutoSizeText(
                    "First Deployment",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.25,
              height: MediaQuery.of(context).size.height * 0.15,
              child: TimelineTile(
                axis: TimelineAxis.horizontal,
                alignment: TimelineAlign.manual,
                lineXY: 0.5,
                beforeLineStyle: LineStyle(color: Colors.white),
                afterLineStyle: LineStyle(
                  color: Colors.transparent,
                ),
                indicatorStyle: IndicatorStyle(
                  width: 50,
                  height: 50,
                  color: Colors.white,
                  iconStyle: IconStyle(
                    iconData: Icons.directions_run_rounded,
                  ),
                ),
                startChild: Container(
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height * 0.1,
                  ),
                  child: AutoSizeText(
                    "Today",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
                endChild: Container(
                  alignment: Alignment.bottomCenter,
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height * 0.1,
                  ),
                  child: AutoSizeText(
                    "Still going!",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      }
    });
  }
}
