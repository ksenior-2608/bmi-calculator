import 'package:flutter/material.dart';

import '../components/constants.dart';

class CardContent extends StatelessWidget {
  final IconData iconToDisplay;
  final String textToShow;
  CardContent({this.iconToDisplay, this.textToShow});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconToDisplay,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          textToShow,
          style: kLabelStyle,
        ),
      ],
    );
  }
}
