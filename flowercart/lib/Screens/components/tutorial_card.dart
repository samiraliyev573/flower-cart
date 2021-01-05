import 'package:flowercart/size_config.dart';
import 'package:flutter/material.dart';

class TutorialListCard extends StatelessWidget {
  final Function press;

  TutorialListCard({this.press});
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return GestureDetector(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Spacer(),
                    Text(
                      "Lesson 1",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Lets put the seed in the ground",
                      style: TextStyle(color: Colors.white54),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Icon(
                          Icons.timer,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "10 Minutes",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Spacer()
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            AspectRatio(
              aspectRatio: 0.71,
              child: Image.asset(
                "assets/images/illustration2.png",
                //fit: BoxFit.cover,
                alignment: Alignment.centerLeft,
              ),
            )
          ],
        ),
      ),
    );
  }
}
