import 'dart:ffi';
import 'dart:math';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CalculatorBrain {
  CalculatorBrain({@required this.height, @required this.weight});

  double _bmi;

  final int height;
  final int weight;

  String bmiCalc() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String bmiType() {
    if (_bmi >= 25.0) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String bmiInterpretation() {
    if (_bmi >= 25.0) {
      return 'You weigh more than an average healthy person, try exercising more!';
    } else if (_bmi >= 18.5) {
      return 'You\'re Weight is just right!';
    } else {
      return 'You weight less than an average healthy person, try getting a calorie positive diet!';
    }
  }
}
