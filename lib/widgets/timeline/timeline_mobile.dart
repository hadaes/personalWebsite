import 'package:auto_size_text/auto_size_text.dart';
import "package:flutter/material.dart";
import 'package:timeline_tile/timeline_tile.dart';

class TimelineMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.95,
          height: MediaQuery.of(context).size.height * 0.30,
          child: TimelineTile(
            beforeLineStyle: LineStyle(color: Colors.transparent),
            afterLineStyle: LineStyle(color: Colors.white),
            axis: TimelineAxis.vertical,
            alignment: TimelineAlign.manual,
            lineXY: 0.5,
            indicatorStyle: IndicatorStyle(
              color: Colors.green,
              width: MediaQuery.of(context).size.width * 0.20,
              height: MediaQuery.of(context).size.height * 0.20,
              iconStyle: IconStyle(
                color: Colors.white,
                iconData: Icons.check,
              ),
            ),
            startChild: Container(
              alignment: Alignment.center,
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.20,
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
              alignment: Alignment.centerRight,
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.20,
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
          width: MediaQuery.of(context).size.width * 0.95,
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
              width: MediaQuery.of(context).size.width * 0.20,
              height: MediaQuery.of(context).size.height * 0.20,
              iconStyle: IconStyle(iconData: Icons.money_rounded),
            ),
            startChild: Container(
              alignment: Alignment.center,
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.20,
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
              alignment: Alignment.centerRight,
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.20,
              ),
              child: AutoSizeText(
                "Domain Name Acquired",
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
          width: MediaQuery.of(context).size.width * 0.95,
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
              width: MediaQuery.of(context).size.width * 0.20,
              height: MediaQuery.of(context).size.height * 0.20,
              color: Colors.lightBlue,
              iconStyle: IconStyle(
                iconData: Icons.backup,
              ),
            ),
            startChild: Container(
              alignment: Alignment.center,
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.20,
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
                maxHeight: MediaQuery.of(context).size.height * 0.05,
                maxWidth: MediaQuery.of(context).size.width * 0.05,
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
          width: MediaQuery.of(context).size.width * 0.95,
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
              width: MediaQuery.of(context).size.width * 0.20,
              height: MediaQuery.of(context).size.height * 0.20,
              color: Colors.white,
              iconStyle: IconStyle(
                iconData: Icons.directions_run_rounded,
              ),
            ),
            startChild: Container(
              alignment: Alignment.center,
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.20,
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
                maxHeight: MediaQuery.of(context).size.height * 0.20,
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
}
