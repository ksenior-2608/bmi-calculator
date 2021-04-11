import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/bottom_button.dart';
import '../components/constants.dart';
import '../components/reusable_card.dart';

class ResultPage extends StatelessWidget {
  final resultVal;
  final resultTitle;
  final resultDescript;
  ResultPage(
      {@required this.resultVal,
      @required this.resultTitle,
      @required this.resultDescript});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: kLabelStyle,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 16),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kResultLabelStyle,
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: ReusableCard(
              colour: kInactiveCardColor,
              cardChild: Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultTitle,
                      style: kResultStyle,
                    ),
                    Text(
                      resultVal,
                      style: kBmiTextStyle,
                    ),
                    Text(
                      'Normal BMI Range:\n18.5 - 25 kg/m2',
                      textAlign: TextAlign.center,
                      style: kRangeStyle,
                    ),
                    Text(
                      resultDescript,
                      textAlign: TextAlign.center,
                      style: kDescriptStyle,
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            textToDisplay: 'Re-Calculate',
          )
        ],
      ),
    );
  }
}
