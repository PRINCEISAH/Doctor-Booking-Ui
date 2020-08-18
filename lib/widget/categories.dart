import 'package:doctor/models/categorie.dart';
import 'package:doctor/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Categories extends StatelessWidget {
  List<AppCategories> _Categories = [
    AppCategories(name: "brain", iconUrl: "images/Brain.svg"),
    AppCategories(name: "Lungs", iconUrl: "images/lungs.svg"),
    AppCategories(name: "Stomach", iconUrl: "images/stomach.svg"),
    AppCategories(name: "Stomach", iconUrl: "images/stomach.svg")
  ];
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
                ),
              ],
            ),
          ),
          SizedBox(height: 21),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                      _Categories.length,
                      (index) => _CategoriesCard(
                            name: _Categories[index].name,
                            url: _Categories[index].iconUrl,
                          ))),
            ),
          )
        ],
      ),
    );
  }
}

class _CategoriesCard extends StatelessWidget {
  final String name;
  final String url;

  const _CategoriesCard({Key key, this.name, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 14),
      child: Container(
        height: 123,
        width: 105,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14), color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(url),
            SizedBox(
              height: 20,
            ),
            Text(
              name,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Rubik",
                  color: AppColors.DeepGeryColor),
            )
          ],
        ),
      ),
    );
  }
}
