import 'dart:math';

import 'package:flutter/cupertino.dart';

class Calculatebrain {
  Calculatebrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String getTexted() {
    if (_bmi >= 25) {
      return 'OVER-WEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDER-WEIGHT';
    }
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Your BMI is higher than normal BMI. Must do excercise!!';
    } else if (_bmi > 18.5) {
      return 'Your BMI is normal. Good Job';
    } else {
      return 'Your BMI is below the normal BMI. Eat More!!';
    }
  }
}
