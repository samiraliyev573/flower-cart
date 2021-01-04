import 'package:flutter/material.dart';
import 'package:flowercart/Screens/plant_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PlantScreen(),
    );
  }
}
