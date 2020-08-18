import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 33),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Hi Sem,',
            style: TextStyle(fontSize: 18),
          ),
          SvgPicture.asset(
            "images/notification.svg",
            height: 19.75,
            width: 17.5,
          )
        ],
      ),
    );
  }
}
