import 'package:doctor/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Specialist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: size.height * 0.04,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Nearest Specialist",
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
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          SpecialistCard()
        ],
      ),
    );
  }
}

class SpecialistCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, bottom: 16),
      child: Container(
        height: 201,
        width: 329,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(23), color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  color: Colors.white,
                  height: 100,
                  child: Container(
                      height: 89,
                      width: 86,
                      color: AppColors.YellowColors,
                      child: Stack(
                        children: <Widget>[
                          Positioned(child: Image.asset("images/pL.png"))
                        ],
                      )),
                ),
                SizedBox(
                  width: 14,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Dr. Sahriar Faravi",
                      style: TextStyle(
                          fontFamily: "Rubik",
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Color(0xff292E2C)),
                    ),
                    Text(
                      "Dentist",
                      style: TextStyle(
                          fontFamily: "Rubik",
                          fontSize: 15,
                          color: Color(0xff292E2C)),
                    ),
                    Row(
                      children: <Widget>[
                        SvgPicture.asset("images/location.svg"),
                        Text(
                          "Royal Ln. Mesa, New Jersey",
                          style: TextStyle(
                              fontFamily: "Rubik",
                              fontSize: 15,
                              color: Color(0xff292E2C)),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 23,
            ),
            Row(
              children: <Widget>[
                Container(
                  height: 45,
                  width: 50,
                  decoration: BoxDecoration(
                      color: AppColors.BightGery,
                      borderRadius: BorderRadius.circular(9)),
                  child: SvgPicture.asset(
                    "images/message.svg",
                    fit: BoxFit.scaleDown,
                  ),
                ),
                SizedBox(
                  width: 19,
                ),
                Container(
                  height: 46,
                  width: 220,
                  decoration: BoxDecoration(
                      color: AppColors.DeepGeryColor,
                      borderRadius: BorderRadius.circular(11)),
                  child: Center(
                    child: Text(
                      "MAKE AN APPOINTMENT",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Rubik",
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
