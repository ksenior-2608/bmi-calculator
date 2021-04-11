import 'package:flutter/material.dart';

import '../components/constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String textToDisplay;
  BottomButton({@required this.onTap, @required this.textToDisplay});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: kBottomContainerHeight,
        width: double.infinity,
        color: kBottomContainerColor,
        child: Center(
          child: Text(
            textToDisplay,
            style: kBottomContainerTextStyle,
          ),
        ),
      ),
    );
  }
}
