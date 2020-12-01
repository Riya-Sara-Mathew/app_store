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
                Icons.book,
                size: 34,
                color: kPrimaryColor,
              ),
              'History'),
          CategoryCard(
              Icon(
                Icons.computer,
                size: 34,
                color: kPrimaryColor,
              ),
              'Education'),
          CategoryCard(
              Icon(
                Icons.videogame_asset,
                size: 34,
                color: kPrimaryColor,
              ),
              'Romance'),
          CategoryCard(
              Icon(
                Icons.videocam,
                size: 34,
                color: kPrimaryColor,
              ),
              'Motivational'),
          CategoryCard(
              Icon(
                Icons.watch,
                size: 34,
                color: kPrimaryColor,
              ),
              'Sci-Fi'),
          CategoryCard(
              Icon(
                Icons.weekend,
                size: 34,
                color: kPrimaryColor,
              ),
              'Drama'),
        ],
      ),
    );
  }
}
