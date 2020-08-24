import 'package:doctor/utils/utils.dart';
import 'package:flutter/material.dart';

class PictureCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 60, right: 60, top: 35),
      child: Container(
          decoration: BoxDecoration(
              color: AppColors.YellowColors,
              borderRadius: BorderRadius.circular(43)),
          height: 310,
          width: 294,
          child: Image.asset("images/pL.png")),
    );
    ;
  }
}
