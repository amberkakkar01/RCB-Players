import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'LoginPage.dart';
import 'helper/Constants.dart';
void main() => runApp(ContactlyApp());

class ContactlyApp extends StatelessWidget {
  @override
  final routes = <String, WidgetBuilder>{
    loginPageTag: (context) => LoginPage(),
    homePageTag: (context) => HomePage(),
  };
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: appTitle,
        theme: new ThemeData(
          primaryColor: appDarkGreyColor,
        ),
        home: LoginPage(), // just added
        routes: routes
    );
  }


}