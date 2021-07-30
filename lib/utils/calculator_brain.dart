

import 'dart:math';

class CalculatorBrain{
  CalculatorBrain(this.height, this.weight);

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI(){
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults(){
    if(_bmi >= 25) return 'Overweight';
    else if (_bmi > 18.5) return 'Normal';
    else return 'Underweight';
  }

  String getInterpretation(){
    if(_bmi >= 25) return 'Your body is higher than normal.';
    else if (_bmi > 18.5) return 'Your body is normal, Great!';
    else return 'You should eat more.';
  }
}