import 'package:doctor/widget/Search.dart';
import 'package:doctor/widget/categories.dart';
import 'package:doctor/widget/greetings.dart';
import 'package:doctor/widget/top.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 54),
          TopSection(),
          Greetings(),
          Search(),
          Categories()
        ],
      ),
    );
  }
}
