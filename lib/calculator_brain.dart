import 'dart:math';

class CalculatorBrain {
  final height;
  final weight;

  double _bmi;

  CalculatorBrain(this.height, this.weight);

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getresult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.0) {
      return 'Normal';
    } else {
      return ' Underweight';
    }
  }

  String getrinterpretation() {
    if (_bmi >= 25) {
      return 'You are overweight, Do exercise daily to loose weight';
    } else if (_bmi > 18.0) {
      return 'You are normal, stay healthy!';
    } else {
      return 'You are underweight, Take more nutrition to gain weight';
    }
  }
}
