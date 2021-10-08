import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi = 0.0;

  /*Function that will return the result as a STRING */

  String calculateBMI() {
    double _bmi = weight / pow(height / 100, 2);
    // need to convert the result to a single decimal number then to a string
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a height than normal body weight, Try to excercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good Job!';
    } else {
      return 'You have a lower than body weight. You can eat a bit a bit more.';
    }
  }
}
