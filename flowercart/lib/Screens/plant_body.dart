import 'package:flutter/material.dart';
import 'package:flowercart/constants.dart';
import 'components/icon_card.dart';
import 'components/image_and_icons.dart';
import 'components/title_and_days.dart';

class PlantBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(),
          TitleAndDays(
            title: "Samir",
            country: "Azerbaijan",
            day: 12,
          ),
        ],
      ),
    );
  }
}
