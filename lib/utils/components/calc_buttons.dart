import 'package:calculator/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CalcButtonThemeData {
  CalcButtonThemeData(
      {@required this.labelStyle,
      @required this.backgroundColor,
      @required this.disabledLabelStyle,
      @required this.disabledBackgroundColor})
      : assert(labelStyle != null,
            "'labelStyle' cannot be null for CalcButtonThemeData"),
        assert(backgroundColor != null,
            "'backgroundColor' cannot be null for CalcButtonThemeData"),
        assert(disabledLabelStyle != null,
            "'disabledLabelStyle' cannot be null for CalcButtonThemeData"),
        assert(disabledBackgroundColor != null,
            "'disabledBackgroundColor' cannot be null for CalcButtonThemeData");

  final TextStyle labelStyle;
  final Color backgroundColor;
  final TextStyle disabledLabelStyle;
  final Color disabledBackgroundColor;
}

/// This creates a default button that can be usd all across the app
class NumbersButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  NumbersButton({
    @required this.label,
    this.onPressed,
  });

  /// We build our buttons calling the CalcThemeData and the buttonBuilder
  /// class.
  /// This can be repeated for all the buttons we want to build
  @override
  Widget build(BuildContext context) {
    final themeData = CalcTheme.of(context);
    final buttonThemeData = themeData.numberBtnThemeData;
    return _ButtonBuilder(
      color: buttonThemeData.backgroundColor,
      labelStyle: buttonThemeData.labelStyle,
      disabledColor: buttonThemeData.disabledBackgroundColor,
      disabledLabelStyle: buttonThemeData.disabledLabelStyle,
      label: this.label,
      onPressed: this.onPressed,
    ).build();
  }
}

class ResetButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  ResetButton({
    @required this.label,
    this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    final themeData = CalcTheme.of(context);
    final buttonThemeData = themeData.resetBtnThemeData;
    return _ButtonBuilder(
      color: buttonThemeData.backgroundColor,
      labelStyle: buttonThemeData.labelStyle,
      disabledColor: buttonThemeData.disabledBackgroundColor,
      disabledLabelStyle: buttonThemeData.disabledLabelStyle,
      label: this.label,
      onPressed: this.onPressed,
    ).build();
  }
}

class OperationsButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  OperationsButton({
    @required this.label,
    this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    final themeData = CalcTheme.of(context);
    final buttonThemeData = themeData.operationsBtnThemeData;
    return _ButtonBuilder(
      color: buttonThemeData.backgroundColor,
      labelStyle: buttonThemeData.labelStyle,
      disabledColor: buttonThemeData.disabledBackgroundColor,
      disabledLabelStyle: buttonThemeData.disabledLabelStyle,
      label: this.label,
      onPressed: this.onPressed,
    ).build();
  }
}

/// This is a button builder that will "build" the
/// various properties we need for the buttons that will be created.
/// It will just provide requirements that can be used
///
class _ButtonBuilder {
  final Color color;
  final TextStyle labelStyle;
  final Color disabledColor;
  final TextStyle disabledLabelStyle;
  final String label;
  final VoidCallback onPressed;
  final double borderRadius;
  _ButtonBuilder(
      {@required this.color,
      @required this.labelStyle,
      @required this.disabledColor,
      @required this.disabledLabelStyle,
      @required this.label,
      @required this.onPressed,
      // double width,
      this.borderRadius = 5.0});
  FlatButton build() {
    return FlatButton(
        onPressed: this.onPressed,
        color: this.color,
        textColor: this.labelStyle.color,
        disabledColor: this.disabledColor,
        disabledTextColor: this.disabledLabelStyle.color,
        padding: EdgeInsets.all(16.0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Text(this.label,
            style: this.onPressed != null
                ? this.labelStyle
                : this.disabledLabelStyle));
  }
}
