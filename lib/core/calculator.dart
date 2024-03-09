import 'dart:math';

class Calculator {
  final int height;
  final int weight;

  Calculator({
    required this.height,
    required this.weight
  });

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Sobrepeso';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Abaixo do peso';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Você tem um peso corporal acima do normal. Tente se exercitar mais.';
    } else if (_bmi >= 18.5) {
      return 'Você tem um peso corporal normal. Bom trabalho!';
    } else {
      return 'Você tem um peso corporal inferior ao normal. Você pode comer e um pouco mais.';
    }
  }
}
