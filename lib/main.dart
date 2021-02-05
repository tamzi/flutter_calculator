import 'package:calculator/ui/calcultor_ui_fragment.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: CalculatorScreen(),
    ),
  );
}

abstract class CalculatorScreen extends Widget {
  factory CalculatorScreen() {
    return _CalculatorScreenAndroid();
  }
}

class _CalculatorScreenAndroid extends StatelessWidget
    implements CalculatorScreen {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CalculatorScreenMobileLayout(),
    );
  }
}
