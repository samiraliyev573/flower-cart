import 'package:flutter/material.dart';
import 'package:flowercart/Screens/plant_screen.dart';
import 'constants.dart';
import 'Screens/onboarding_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flower Cart',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          fontFamily: "Muli",
          textTheme: TextTheme(
              bodyText1: TextStyle(color: kTextColor),
              bodyText2: TextStyle(color: kTextColor)),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: OnboardingScreen(),
    );
  }
}
