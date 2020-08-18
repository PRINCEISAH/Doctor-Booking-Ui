import 'package:doctor/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: <Widget>[
          Container(
            height: 54,
            width: 292,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: AppColors.TextFiledBackgoundColor),
            child: TextField(
              decoration: InputDecoration(
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: SvgPicture.asset('images/Search.svg'),
                  ),
                  hintText: "Search doctor"),
            ),
          ),
          Spacer(),
          Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
                color: AppColors.BightGery,
                borderRadius: BorderRadius.circular(11)),
            child: SvgPicture.asset(
              'images/filter.svg',
              fit: BoxFit.scaleDown,
            ),
          )
        ],
      ),
    );
  }
}
