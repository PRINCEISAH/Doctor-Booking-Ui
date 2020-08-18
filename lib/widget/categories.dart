import 'package:doctor/utils/utils.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  List<String> _Categories = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 37),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Categories",
                  style: TextStyle(
                      color: AppColors.BoldTextColor,
                      fontFamily: 'PTSerif',
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    color: AppColors.DeepGeryColor,
                    fontSize: 14,
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
