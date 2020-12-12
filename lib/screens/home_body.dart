import 'package:flutter/material.dart';
import '../components/category/category.dart';
import '../components/search_box.dart';
import 'package:app_store/books/book_card.dart';
//import 'package:app_store/books/book_card_primary.dart';
import 'package:app_store/books/book_detail.dart';
import 'package:app_store/books/book_model.dart';
import 'package:app_store/books/fade_in_animation.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SearchBox(
          onChanged: (value) {},
        ),
        SizedBox(
          height: 10,
        ),
        Center(
            child: Text(
          'Categories',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )),
        SizedBox(
          height: 10,
        ),
        Category(),
        SizedBox(
          height: 10,
        ),
        Center(
            child: Text(
          'Products',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )),
        SizedBox(height: 15.0),
        ListView.builder(
          itemCount: dummyBook.length,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemBuilder: (context, index) {
            var book = dummyBook[index];
            return FadeInAnimation(
              delay: 3,
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BookDetail(
                            book: book,
                          ),
                        ));
                  },
                  child: BookCardWidget(book: book)),
            );
          },
        )
      ],
    );
  }
}
