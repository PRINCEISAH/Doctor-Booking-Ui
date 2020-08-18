import 'package:doctor/widget/Search.dart';
import 'package:doctor/widget/Specialist.dart';
import 'package:doctor/widget/categories.dart';
import 'package:doctor/widget/greetings.dart';
import 'package:doctor/widget/top.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ListView(
      children: <Widget>[
        SizedBox(height: size.height * 0.07),
        TopSection(),
        Greetings(),
        Search(),
        Categories(),
        Specialist()
      ],
    );
  }
}
