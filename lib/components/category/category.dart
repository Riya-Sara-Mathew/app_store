import 'package:flutter/material.dart';
import './category_card.dart';
import 'package:app_store/constants.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CategoryCard(
              Icon(
                Icons.auto_stories,
                size: 34,
                color: kPrimaryColor,
              ),
              'History'),
          CategoryCard(
              Icon(
                Icons.psychology_rounded,
                size: 34,
                color: kPrimaryColor,
              ),
              'Education'),
          CategoryCard(
              Icon(
                Icons.favorite,
                size: 34,
                color: kPrimaryColor,
              ),
              'Romance'),
          CategoryCard(
              Icon(
                Icons.follow_the_signs_rounded,
                size: 34,
                color: kPrimaryColor,
              ),
              'Motivational'),
          CategoryCard(
              Icon(
                Icons.theater_comedy,
                size: 34,
                color: kPrimaryColor,
              ),
              'Comedy'),
          CategoryCard(
              Icon(
                Icons.outlet_rounded,
                size: 34,
                color: kPrimaryColor,
              ),
              'Horror'),
        ],
      ),
    );
  }
}
