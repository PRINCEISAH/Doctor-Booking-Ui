import 'package:doctor/utils/utils.dart';
import 'package:doctor/widget/Avilability.dart';
import 'package:doctor/widget/picture_card.dart';
import 'package:doctor/widget/reviews_patient.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailedScreen(),
    );
  }
}

class DetailedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 40,
        ),
        Header(),
        PictureCard(),
        DoctorDetail(),
        RandP(),
        Availability()
      ],
    );
  }

  Widget DoctorDetail() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Dr. Sahriar Faravi",
            style: TextStyle(
                fontFamily: "Rubik",
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Color(0xff292E2C)),
          ),
          SizedBox(
            height: 9,
          ),
          Text(
            "Dentist",
            style: TextStyle(
                fontFamily: "Rubik", fontSize: 18, color: Color(0xff292E2C)),
          ),
          SizedBox(
            height: 13,
          ),
          Row(
            children: <Widget>[
              SvgPicture.asset("images/location.svg"),
              Text(
                "Royal Ln. Mesa, New Jersey",
                style: TextStyle(
                    fontFamily: "Rubik",
                    fontSize: 12,
                    color: Color(0xff292E2C)),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Row(
          children: <Widget>[
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Container(
                height: 52,
                width: 52,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.green,
                ),
                child: SvgPicture.asset("images/back.svg"),
              ),
            ),
            SizedBox(
              width: 57,
            ),
            Text(
              "Dr. Details",
              style: TextStyle(fontSize: 29, fontFamily: "PTSerif"),
            ),
          ],
        ),
      ),
    );
  }
}
