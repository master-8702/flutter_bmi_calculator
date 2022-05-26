import 'dart:math';

class BMICalculator {
  BMICalculator(this.height, this.weight);
  final height;
  final weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getStatus() {
    if (_bmi < 18.5) {
      return "Underweight";
    } else if (_bmi >= 25) {
      return "Overweight";
    } else {
      return "Normal";
    }
  }

  String getInterpretation() {
    if (_bmi < 18.5) {
      return "You Have a Lower Than Normal Body Weight.\nYou Should Eat More Balanced Diet";
    } else if (_bmi >= 25) {
      return "You Have a Higher Than Normal Body Weight.\n You Should Do more Exercises!";
    } else {
      return "You Have a Normal Body Weight.\n Good Job!";
    }
  }
}
