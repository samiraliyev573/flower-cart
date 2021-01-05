import 'package:flowercart/Screens/components/tutorial_card.dart';
import 'package:flowercart/size_config.dart';
import 'package:flutter/material.dart';

class TutorialBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        SizedBox(
          height: 80,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GridView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 7,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      SizeConfig.orientation == Orientation.landscape ? 2 : 1,
                  mainAxisSpacing: 20,
                  crossAxisSpacing:
                      SizeConfig.orientation == Orientation.landscape ? 20 : 0,
                  childAspectRatio: 1.65),
              itemBuilder: (context, index) => TutorialListCard(
                press: () {},
              ),
            ),
          ),
        )
      ],
    ));
  }
}
