import 'package:app_store/chat/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:app_store/constants.dart';
import 'package:app_store/screens/home_body.dart';
import 'package:app_store/screens/add_book.dart';

//import 'package:app_store/components/bottom_nav_bar.dart';
//import 'package:app_store/components/app_bar.dart';
//import 'package:food_app/screens/home/components/body.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35),
      height: 75,
      width: double.infinity,
      // double.infinity means it cove the available width
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -7),
            blurRadius: 33,
            color: Color(0xFF6DAED9).withOpacity(0.11),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/icons/home.svg"),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.chat_rounded),
            color: ksecondaryColor,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatScreen(),
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.add_circle),
            color: ksecondaryColor,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddBook(),
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.favorite),
            color: ksecondaryColor,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.account_circle_rounded),
            color: ksecondaryColor,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Colors.grey),
        /*leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Builder(
            builder: (context) => IconButton(
              icon: SvgPicture.asset("assets/icons/menu.svg"),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),*/
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        titleSpacing: 0,
        title: RichText(
          text: TextSpan(
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: "Logophile",
                style: TextStyle(color: kPrimaryColor),
              ),
              TextSpan(
                text: "Book",
                style: TextStyle(color: ksecondaryColor),
              ),
              TextSpan(
                text: "Store",
                style: TextStyle(color: kPrimaryColor),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/icons/notification.svg"),
            onPressed: () {},
          ),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
//            header
            new UserAccountsDrawerHeader(
              accountName: Text(
                'Riya Mathew',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              accountEmail: Text(
                'riya.s.mathew47@gmail.com',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
              decoration: new BoxDecoration(color: kPrimaryColor),
            ),

//            body

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My account'),
                leading: Icon(Icons.person),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite),
              ),
            ),

            Divider(),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Log out'),
                leading: Icon(
                  Icons.transit_enterexit,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
      body: HomeBody(),
      bottomNavigationBar: BottomNavBar(),
      //body: Body(),
    );
  }
}
