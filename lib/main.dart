import 'package:az_bmi/screens/home_page.dart';
import 'package:az_bmi/utils/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: kMainPrimaryColor,
        accentColor: kMainAccentColor,
        scaffoldBackgroundColor: kMainScaffoldBgColor,
        textTheme: kMainTextTheme,
      ),
      home: HomePage(),
    );
  }
}
