import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;
  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2); // Divide height by 100 to convert it to meters
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return "Underweight";
    }
  }

  String getInterpretaion() {
    if (_bmi >= 25) {
      return "you have a higher than body weight, Try to exercise more.";
    } else if (_bmi > 18.5) {
      return 'you have a normal body weight, Good job.';
    } else {
      return "you have a lower than normal body weight, Try to eat more.";
    }
  }
}
