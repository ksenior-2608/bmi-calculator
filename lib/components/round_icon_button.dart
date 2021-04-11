import 'package:flutter/material.dart';

import '../components/constants.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPress});
  final IconData icon;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      child: Icon(
        icon,
        color: kCardTextColor,
      ),
      fillColor: kRoundIconColor,
      shape: CircleBorder(),
      constraints: kRoundIconSize,
    );
  }
}
