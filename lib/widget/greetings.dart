import 'package:flutter/material.dart';

class Greetings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 16, 92, 51),
      child: Container(
        child: Text("How do you feel\ntoday?",
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                fontFamily: 'PTSerif')),
      ),
    );
  }
}
