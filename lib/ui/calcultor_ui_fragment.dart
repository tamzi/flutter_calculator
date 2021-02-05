import 'package:calculator/logic/calculator.dart';
import 'package:calculator/utils/components/calc_buttons.dart';
import 'package:calculator/utils/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

/*this will hold the CalculatorScreenMobileLayout*/

Logic calc = Logic();

class CalculatorScreenMobileLayout extends StatefulWidget {
  @override
  _CalculatorScreenMobileLayoutState createState() =>
      _CalculatorScreenMobileLayoutState();
}

class _CalculatorScreenMobileLayoutState
    extends State<CalculatorScreenMobileLayout> {
  @override
  Widget build(BuildContext context) {
    final themeData = CalcTheme.of(context);
    return Scaffold(
      backgroundColor: themeData.colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
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
                    style: themeData.coalTextTheme.font1,
                    textAlign: TextAlign.left,
                  ),
                )
              ],
            ),

            SizedBox(height: 10),
            // This row handles AC, +/-, %, and Divide buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ResetButton(
                    label: "AC",
                    onPressed: () {
                      setState(() {
                        calc.reset();
                      });
                    }),
                OperationsButton(
                    label: "+/-",
                    onPressed: () {
                      setState(() {
                        calc.negative();
                      });
                    }),
                OperationsButton(
                    label: "%",
                    onPressed: () {
                      setState(() {
                        calc.percentage();
                      });
                    }),
                OperationsButton(
                    label: "÷",
                    onPressed: () {
                      setState(() {
                        calc.divide();
                      });
                    }),
              ],
            ),

            SizedBox(
              height: 5,
            ),
            // This row handles 7,8,9 and x buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NumbersButton(
                    label: "7",
                    onPressed: () {
                      setState(() {
                        calc.setNumber('7');
                      });
                    }),
                NumbersButton(
                    label: "8",
                    onPressed: () {
                      setState(() {
                        calc.setNumber('8');
                      });
                    }),
                NumbersButton(
                    label: "9",
                    onPressed: () {
                      setState(() {
                        calc.setNumber('9');
                      });
                    }),
                OperationsButton(
                    label: "x",
                    onPressed: () {
                      setState(() {
                        calc.multiply();
                      });
                    }),
              ],
            ),

            SizedBox(
              height: 5,
            ),
            //This row handles: 6,5,4 and subtraction
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NumbersButton(
                    label: "6",
                    onPressed: () {
                      setState(() {
                        calc.setNumber('6');
                      });
                    }),
                NumbersButton(
                    label: "5",
                    onPressed: () {
                      setState(() {
                        calc.setNumber('5');
                      });
                    }),
                NumbersButton(
                    label: "4",
                    onPressed: () {
                      setState(() {
                        calc.setNumber('4');
                      });
                    }),
                OperationsButton(
                    label: "-",
                    onPressed: () {
                      setState(() {
                        calc.subtract();
                      });
                    }),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            //This row handles: 1,2,3 and addition
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NumbersButton(
                    label: "3",
                    onPressed: () {
                      setState(() {
                        calc.setNumber('3');
                      });
                    }),
                NumbersButton(
                    label: "2",
                    onPressed: () {
                      setState(() {
                        calc.setNumber('2');
                      });
                    }),
                NumbersButton(
                    label: "1",
                    onPressed: () {
                      setState(() {
                        calc.setNumber('1');
                      });
                    }),
                OperationsButton(
                    label: "+",
                    onPressed: () {
                      setState(() {
                        calc.add();
                      });
                    }),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NumbersButton(
                    label: "0",
                    onPressed: () {
                      setState(() {
                        calc.setNumber('0');
                      });
                    }),
                NumbersButton(
                    label: "00",
                    onPressed: () {
                      setState(() {
                        calc.setNumber('00');
                      });
                    }),
                NumbersButton(
                    label: ".",
                    onPressed: () {
                      setState(() {
                        calc.decimal();
                      });
                    }),
                ResetButton(
                    label: "=",
                    onPressed: () {
                      setState(() {
                        calc.execute();
                      });
                    }),
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
