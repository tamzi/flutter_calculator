import 'package:calculator/logic/calculator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calculator(),
    );
  }
}

Logic calc = Logic();

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            //Handles the results display
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    calc.finalResult,
                    style: TextStyle(color: Colors.black, fontSize: 70),
                    textAlign: TextAlign.left,
                  ),
                )
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calculatorButton("AC", Colors.redAccent, Colors.black, () {
                  setState(() {
                    calc.reset();
                  });
                }),
                calculatorButton("+/-", Colors.grey, Colors.black, () {
                  setState(() {
                    calc.negative();
                  });
                }),
                calculatorButton("%", Colors.grey, Colors.black, () {
                  setState(() {
                    calc.percentage();
                  });
                }),
                calculatorButton("/", Colors.green, Colors.black, () {
                  setState(() {
                    calc.divide();
                  });
                }),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calculatorButton("7", Colors.grey, Colors.black, () {
                  setState(() {
                    calc.setNumber('7');
                  });
                }),
                calculatorButton("8", Colors.grey, Colors.black, () {
                  setState(() {
                    calc.setNumber('8');
                  });
                }),
                calculatorButton("9", Colors.grey, Colors.black, () {
                  setState(() {
                    calc.setNumber('9');
                  });
                }),
                calculatorButton("*", Colors.green, Colors.black, () {
                  setState(() {
                    calc.multiply();
                  });
                }),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            //6,5,4 and subtraction
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calculatorButton("6", Colors.grey, Colors.black, () {
                  setState(() {
                    calc.setNumber('6');
                  });
                }),
                calculatorButton("5", Colors.grey, Colors.black, () {
                  setState(() {
                    calc.setNumber('5');
                  });
                }),
                calculatorButton("4", Colors.grey, Colors.black, () {
                  setState(() {
                    calc.setNumber('4');
                  });
                }),
                calculatorButton("-", Colors.green, Colors.black, () {
                  setState(() {
                    calc.subtract();
                  });
                }),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            //123 and addition
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calculatorButton("3", Colors.grey, Colors.black, () {
                  setState(() {
                    calc.setNumber('3');
                  });
                }),
                calculatorButton("2", Colors.grey, Colors.black, () {
                  setState(() {
                    calc.setNumber('2');
                  });
                }),
                calculatorButton("1", Colors.grey, Colors.black, () {
                  setState(() {
                    calc.setNumber('1');
                  });
                }),
                calculatorButton("+", Colors.green, Colors.black, () {
                  setState(() {
                    calc.add();
                  });
                }),
                SizedBox(
                  height: 10,
                ),
                //6,5,4 and subtraction
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {
                        calc.setNumber('0');
                      },
                      padding: EdgeInsets.fromLTRB(35, 20, 128, 42),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        '0',
                        style: TextStyle(fontSize: 35, color: Colors.white),
                      ),
                      color: Colors.blueGrey,
                    ),
                    calculatorButton(".", Colors.green, Colors.black, () {
                      setState(() {
                        calc.decimal();
                      });
                    }),
                    calculatorButton("=", Colors.green, Colors.black, () {
                      setState(() {
                        calc.execute();
                      });
                    }),
                  ],
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget calculatorButton(
    String btnText, Color btnColor, Color btnTextColor, onPressed) {
  return Container(
    child: RaisedButton(
      onPressed: onPressed,
      child: Text(
        btnText,
        style: TextStyle(fontSize: 30, color: btnTextColor),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: btnTextColor,
      padding: EdgeInsets.all(20),
    ),
  );
}
