import 'package:app_store/constants.dart';
import 'package:flutter/material.dart';
import 'package:app_store/books/book_model.dart';
import 'package:app_store/books/book_static.dart';
import 'package:app_store/books/custom_chip.dart';
import 'package:app_store/books/fade_bottom_animation.dart';
import 'package:app_store/books/fade_in_animation.dart';
import 'package:app_store/books/fade_top_animation.dart';

class BookDetail extends StatelessWidget {
  final Book book;
  BookDetail({this.book});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black54,
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Logophile",
          style: TextStyle(
              fontSize: 17.0,
              color: Colors.black54,
              fontWeight: FontWeight.w500),
        ),
        actions: [
          Icon(
            Icons.shopping_cart,
            color: Colors.black54,
            size: 25.0,
          ),
          Padding(
            padding: EdgeInsets.only(right: 15.0),
          ),
          Icon(
            Icons.share,
            color: Colors.black54,
            size: 25.0,
          ),
          Padding(
            padding: EdgeInsets.only(right: 15.0),
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeTopAnimation(
                  delay: 1,
                  child: Center(
                    child: Image.asset(
                      book.urlimage,
                      fit: BoxFit.contain,
                      width: 200,
                      height: 200,
                    ),
                  ),
                ),
                FadeBottomAnimation(
                  delay: 1,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30.0,
                        vertical: 18.0,
                      ),
                      child: Text(
                        book.name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
                FadeBottomAnimation(
                  delay: 2,
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.deepOrange,
                          size: 14.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.deepOrange,
                          size: 14.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.deepOrange,
                          size: 14.0,
                        ),
                        Icon(
                          Icons.star_half,
                          color: Colors.deepOrange,
                          size: 14.0,
                        ),
                        Icon(
                          Icons.star_border,
                          color: Colors.deepOrange,
                          size: 14.0,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12.0),
                FadeBottomAnimation(
                  delay: 4,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30.0,
                        vertical: 18.0,
                      ),
                      child: Text(
                        "₹${book.price}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                FadeBottomAnimation(
                  delay: 5,
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        direction: Axis.horizontal,
                        runAlignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        spacing: 2.0,
                        runSpacing: 8.0,
                        children: [
                          FadeInAnimation(
                              delay: 6, child: CustomChip(name: "Financial")),
                          FadeInAnimation(
                              delay: 6,
                              child: CustomChip(name: "Technologies")),
                          FadeInAnimation(
                              delay: 6, child: CustomChip(name: "Economic")),
                          FadeInAnimation(
                              delay: 6, child: CustomChip(name: "Fantasy")),
                          FadeInAnimation(
                              delay: 6, child: CustomChip(name: "Popular")),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 3.0),
                FadeBottomAnimation(
                  delay: 4,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30.0,
                        vertical: 18.0,
                      ),
                      child: Text(
                        "${book.description}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                FadeBottomAnimation(
                  delay: 4,
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30.0,
                        vertical: 18.0,
                      ),
                      child: Text(
                        "Book Details",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black54,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                    ),
                  ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

//Added animation ^^
