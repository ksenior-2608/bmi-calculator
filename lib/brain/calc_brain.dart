import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  double _bmi;
  final int height;
  final int weight;
  CalculatorBrain({@required this.height, @required this.weight});

  String bmiCalculator() {
    _bmi = weight.toDouble() / pow(height.toDouble() / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25)
      return 'OVERWEIGHT';
    else if (_bmi >= 18.5)
      return 'NORMAL';
    else
      return 'UNDERWEIGHT';
  }

  String getDescript() {
    if (_bmi >= 25)
      return 'You have higher than usual body weight. Try to exercise!';
    else if (_bmi >= 18.5)
      return 'You have a normal body weight. Good Job!';
    else
      return 'You are underweight. You can eat a bit more';
  }
}
