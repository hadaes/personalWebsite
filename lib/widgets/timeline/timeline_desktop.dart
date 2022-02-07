import 'package:auto_size_text/auto_size_text.dart';
import "package:flutter/material.dart";
import 'package:timeline_tile/timeline_tile.dart';

class TimelineDesktop extends StatefulWidget {
  @override
  _TimelineDesktopState createState() => _TimelineDesktopState();
}

class _TimelineDesktopState extends State<TimelineDesktop> {
  var myGroup = AutoSizeGroup();

  @override
  Widget build(BuildContext context) {
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
                maxWidth: MediaQuery.of(context).size.width * 0.22,
              ),
              child: AutoSizeText(
                "July 30, 2020",
                group: myGroup,
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
                maxWidth: MediaQuery.of(context).size.width * 0.22,
              ),
              child: AutoSizeText(
                "First Commit",
                group: myGroup,
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
                maxWidth: MediaQuery.of(context).size.width * 0.22,
              ),
              child: AutoSizeText(
                "September 2, 2020",
                textAlign: TextAlign.center,
                group: myGroup,
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
                maxWidth: MediaQuery.of(context).size.width * 0.22,
              ),
              child: AutoSizeText(
                "Domain Name Acquired",
                maxLines: 2,
                textAlign: TextAlign.center,
                group: myGroup,
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
                maxWidth: MediaQuery.of(context).size.width * 0.22,
              ),
              child: AutoSizeText(
                "September 4, 2020",
                textAlign: TextAlign.center,
                group: myGroup,
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
                maxWidth: MediaQuery.of(context).size.width * 0.22,
              ),
              child: AutoSizeText(
                "First Deployment",
                group: myGroup,
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
                maxWidth: MediaQuery.of(context).size.width * 0.22,
              ),
              child: AutoSizeText(
                "Today",
                group: myGroup,
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
                maxWidth: MediaQuery.of(context).size.width * 0.22,
              ),
              child: AutoSizeText(
                "Still going!",
                group: myGroup,
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
