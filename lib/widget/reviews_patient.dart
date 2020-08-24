import 'package:doctor/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RandP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 25, 30, 48),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Card(
            Textname: "Reviews",
            iconurl: "images/Star.svg",
            Rating: "5.0",
          ),
          Card(
            Textname: "Patients",
            iconurl: "images/p.svg",
            Rating: "10k",
          )
        ],
      ),
    );
  }
}

class Card extends StatelessWidget {
  final String Textname;
  final String Rating;
  final String iconurl;

  const Card({Key key, this.Textname, this.Rating, this.iconurl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: AppColors.TextFiledBackgoundColor,
      ),
      height: 101,
      width: 165,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 22, bottom: 15),
            child: Text(
              Textname,
              style: TextStyle(
                  fontFamily: "Rubik", fontSize: 16, letterSpacing: 0.24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Row(
              children: <Widget>[
                SvgPicture.asset(iconurl),
                Padding(
                  padding: const EdgeInsets.only(left: 11),
                  child: Text(
                    Rating,
                    style: TextStyle(fontSize: 22),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
