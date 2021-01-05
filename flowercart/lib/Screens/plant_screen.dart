import 'package:flutter/material.dart';
import 'plant_body.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'tutorial_screen.dart';
import 'progress_screen.dart';

class PlantScreen extends StatefulWidget {
  @override
  _PlantScreenState createState() => _PlantScreenState();
}

class _PlantScreenState extends State<PlantScreen> {
  int currentIndex = 0;
  List pages = [
    PlantBody(),
    TutorialBody(),
    ProgressBody(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        curve: Curves.easeIn,
        iconSize: 30,
        containerHeight: 60,
        showElevation: false,
        onItemSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavyBarItem(
              icon: Icon(Icons.home),
              title: Text("My Plant"),
              textAlign: TextAlign.center,
              activeColor: Colors.greenAccent,
              inactiveColor: Colors.grey),
          BottomNavyBarItem(
              icon: Icon(Icons.library_books),
              title: Text("Tutorials"),
              activeColor: Colors.greenAccent,
              inactiveColor: Colors.grey),
          BottomNavyBarItem(
              icon: Icon(Icons.timer),
              title: Text("My Progress"),
              activeColor: Colors.greenAccent,
              inactiveColor: Colors.grey),
        ],
      ),
    );
  }
}
