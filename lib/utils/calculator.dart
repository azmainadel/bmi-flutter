import 'dart:math';

class Calculator {
  final int height;
  final int weight;
  double _bmi;

  Calculator({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow((height / 100), 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) {
      return 'Overweight';
    } else if (_bmi > 18.5 && _bmi <= 25) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getFeedback() {
    if (_bmi > 25) {
      return 'Need to exercise more.';
    } else if (_bmi > 18.5 && _bmi <= 25) {
      return 'Good job!';
    } else {
      return 'Need to eat more.';
    }
  }
}
