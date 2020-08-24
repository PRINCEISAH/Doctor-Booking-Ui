import 'package:doctor/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Availability extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 38),
      child: Column(
        children: <Widget>[Available(), AvailableTime()],
      ),
    );
  }
}

class Available extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                "Availability",
                style: TextStyle(
                    fontFamily: "PTSerif",
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 9,
              ),
              Text(
                "10 AM to 06 PM",
                style: TextStyle(
                    fontSize: 14, color: Color.fromRGBO(0, 0, 0, 0.76)),
              )
            ],
          ),
          Container(
            height: 44,
            width: 106,
            decoration: BoxDecoration(
                color: AppColors.TextFiledBackgoundColor,
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: Color.fromRGBO(6, 98, 59, 0.74))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset("images/check.svg"),
                SizedBox(
                  width: 8,
                ),
                Text("Check")
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AvailableTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        TimeContainer(
          time: "10:30 AM",
          color: Color.fromRGBO(255, 211, 0, 0.19),
        ),
        TimeContainer(
          time: "11:30AM",
          color: Color.fromRGBO(146, 255, 0, 0.19),
        ),
        TimeContainer(
          time: "01:00 PM",
          color: Color.fromRGBO(0, 255, 0, 0.19),
        )
      ],
    );
  }
}

class TimeContainer extends StatelessWidget {
  final String time;
  final Color color;

  const TimeContainer({Key key, this.time, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Container(
        height: 48,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: color),
        child: Center(
            child: Text(
          time,
          style: TextStyle(fontFamily: 'Rubik', fontSize: 14),
        )),
      ),
    );
  }
}
