import 'package:flutter/material.dart';
import 'package:app_store/screens/sign_in/sign_in_screen.dart';
import 'package:app_store/widgets/rounded_button.dart';
import 'package:app_store/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Bitmap.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.display3,
                children: [
                  TextSpan(
                    text: "logo",
                  ),
                  TextSpan(
                    text: "phile",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              child: RoundedButton(
                text: "Continue",
                fontSize: 17,
                press: () {
                  Navigator.pushNamed(context, SignInScreen.routeName);
                },
              ),

            ),
          ],
        ),
      ),
    );
  }
}
