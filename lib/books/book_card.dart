import 'package:flutter/material.dart';
import 'package:app_store/books/book_model.dart';
import 'package:app_store/constants.dart';

class BookCardWidget extends StatelessWidget {
  final Book book;
  BookCardWidget({this.book});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 170.0,
      padding: EdgeInsets.only(bottom: 12.0, right: 15.0),
      child: Stack(
        children: [
          Positioned(
            top: 20,
            child: Container(
              width: MediaQuery.of(context).size.width - 30,
              height: 130.0,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 120.0,
                    bottom: 20.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(height: 20.0),
                      Text(
                        book.name,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                          color: kPrimaryColor,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        book.description,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        maxLines: 2,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10.0,
                          color: Colors.black54,
                        ),
                      ),
                      //SizedBox(height: 2.0),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 20,
            child: Container(
              width: 90.0,
              height: 135.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14.0),
                  image: DecorationImage(
                    image: AssetImage(book.urlimage),
                    fit: BoxFit.cover,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
