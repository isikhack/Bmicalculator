import 'dart:math';

class BMICalculator {
  final int height;
  final int weight;
  double _bmi = 0.0;

  BMICalculator({required this.height, required this.weight});

  String calculatorBMI() {
    _bmi = weight / pow((height / 100), 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi < 18.5) {
      return 'UNDERWEIGHT';
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return ' HEALTHY WEIGHT';
    } else if (_bmi >= 25 && _bmi <= 29.9) {
      return 'OVERWEIGHT';
    } else {
      return 'OBESE';
    }
  }

  String getinterpretation() {
    if (_bmi < 18.5) {
      return 'You need to eat more and probably you need to exercise more consult your Doctor';
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return ' You are in healthy weight range. you can eat more and exercise more';
    } else if (_bmi >= 25 && _bmi <= 29.9) {
      return 'You need to eat less and probaly you need to exercise. consult your Doctor';
    } else {
      return 'you are in obese weight range. you need to eat less and probaly you need  exercise more. consult your Doctor';
    }
  }
}
