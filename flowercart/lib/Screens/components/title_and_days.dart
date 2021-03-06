import 'package:flutter/material.dart';
import 'package:flowercart/constants.dart';

class TitleAndDays extends StatelessWidget {
  const TitleAndDays({
    Key key,
    this.title,
    this.country,
    this.day,
  }) : super(key: key);

  final String title, country;
  final int day;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: "$title\n",
                  style: Theme.of(context).textTheme.headline4.copyWith(
                      color: kTextColor, fontWeight: FontWeight.bold)),
              TextSpan(
                  text: country,
                  style: TextStyle(
                      fontSize: 20,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w300))
            ]),
          ),
          Spacer(),
          Text(
            "Day: $day",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: kPrimaryColor),
          )
        ],
      ),
    );
  }
}
