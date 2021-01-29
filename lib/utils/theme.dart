import 'package:calculator/utils/components/calc_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logger/logger.dart';

/// # The Calculator Theme.
///
/// This is the theme for the Calculator UI Component that make up the
/// Calculator design system for the  application.
/// It is composed of:
/// 1. Colours sub theme
/// 2. Text Sub theme that is made up of: Font size and font type plus colour
/// 3. button sub theme
class _CalcThemeColors {
  _CalcThemeColors._();
  static const Color coal = Color.fromRGBO(19, 19, 19, 1.0);
  static const Color reddish = Color.fromRGBO(255, 67, 67, 1.0);
  static const Color warmRed = Color.fromRGBO(255, 119, 84, 1.0);
  static const Color crimsonRed = Color.fromRGBO(255, 119, 119, 0.8);
  static const Color limeGreenish = Color.fromRGBO(74, 187, 0, 1.0);
  static const Color white = Color.fromRGBO(255, 255, 255, 1.0);
  static const Color grey = Color.fromRGBO(239, 239, 239, 1.0);
  static const Color ashGrey = Color.fromRGBO(230, 228, 230, 1.0);
  static const Color darkGrey = Color.fromRGBO(131, 130, 154, 1.0);
  static const Color lightGrey = Color.fromRGBO(246, 246, 246, 1.0);
}

class CalcColorTheme {
  CalcColorTheme({
    @required this.coal,
    @required this.reddish,
    @required this.warmRed,
    @required this.crimsonRed,
    @required this.limeGreenish,
    @required this.white,
    @required this.grey,
    @required this.ashGrey,
    @required this.darkGrey,
    @required this.lightGrey,
  })  : assert(coal != null, "'coal' cannot be null for CalcColorTheme"),
        assert(reddish != null, "'reddish' cannot be null for CalcColorTheme"),
        assert(warmRed != null, "'warmRed' cannot be null for CalcColorTheme"),
        assert(crimsonRed != null,
            "'crimsonRed' cannot be null for CalcColorTheme"),
        assert(limeGreenish != null,
            "'limeGreenish' cannot be null for CalcColorTheme"),
        assert(white != null, "'white' cannot be null for CalcColorTheme"),
        assert(grey != null, "'grey' cannot be null for CalcColorTheme"),
        assert(ashGrey != null, "'ashGrey' cannot be null for CalcColorTheme"),
        assert(
            darkGrey != null, "'darkGrey' cannot be null for CalcColorTheme"),
        assert(
            lightGrey != null, "'lightGrey' cannot be null for CalcColorTheme");

  final Color coal;
  final Color reddish;
  final Color warmRed;
  final Color crimsonRed;
  final Color limeGreenish;
  final Color white;
  final Color grey;
  final Color ashGrey;
  final Color darkGrey;
  final Color lightGrey;
}

/// Text tokens
class _CalcFontStyles {
  _CalcFontStyles._();

  /// font1 will be the calculator numbers display font
  static const TextStyle font1 = TextStyle(
      fontSize: 55.0,
      height: 1.1236,
      letterSpacing: -0.3,
      fontWeight: FontWeight.w700,
      fontFamily: 'DMSans',
      color: _CalcThemeColors.coal);

  /// font2 will be the calculator buttons
  static const TextStyle font2 = TextStyle(
      fontSize: 33.0,
      height: 1.2,
      letterSpacing: -0.3,
      fontWeight: FontWeight.w500,
      fontFamily: 'Gilroy',
      color: _CalcThemeColors.coal);

  /// font3 will be for the headings and text
  static const TextStyle font3 = TextStyle(
      fontSize: 21.0,
      height: 1.16,
      letterSpacing: -0.3,
      fontWeight: FontWeight.w500,
      fontFamily: 'Gilroy',
      color: _CalcThemeColors.coal);
}

class CalcTextTheme {
  CalcTextTheme({
    @required this.font1,
    @required this.font2,
    @required this.font3,
  })  : assert(font1 != null, "'font1' cannot be null for CalcTextTheme"),
        assert(font2 != null, "'font2' cannot be null for CalcTextTheme"),
        assert(font3 != null, "'font3' cannot be null for CalcTextTheme");

  final TextStyle font1;
  final TextStyle font2;
  final TextStyle font3;
}

final _baseTextTheme = CalcTextTheme(
  font1: _CalcFontStyles.font1,
  font2: _CalcFontStyles.font2,
  font3: _CalcFontStyles.font3,
);

CalcThemeData _default = CalcThemeData(
  ///
  coal: _CalcThemeColors.coal,
  reddish: _CalcThemeColors.reddish,
  warmRed: _CalcThemeColors.warmRed,
  crimsonRed: _CalcThemeColors.crimsonRed,
  limeGreenish: _CalcThemeColors.limeGreenish,
  white: _CalcThemeColors.white,
  grey: _CalcThemeColors.grey,
  ashGrey: _CalcThemeColors.ashGrey,
  darkGrey: _CalcThemeColors.darkGrey,
  lightGrey: _CalcThemeColors.lightGrey,

  ///
  coalTextTheme: CalcTextTheme(
    font1: _baseTextTheme.font1.copyWith(color: _CalcThemeColors.coal),
    font2: _baseTextTheme.font2.copyWith(color: _CalcThemeColors.coal),
    font3: _baseTextTheme.font3.copyWith(color: _CalcThemeColors.coal),
  ),
  reddishTextTheme: CalcTextTheme(
    font1: _baseTextTheme.font1.copyWith(color: _CalcThemeColors.reddish),
    font2: _baseTextTheme.font2.copyWith(color: _CalcThemeColors.reddish),
    font3: _baseTextTheme.font3.copyWith(color: _CalcThemeColors.reddish),
  ),
  warmRedTextTheme: CalcTextTheme(
    font1: _baseTextTheme.font1.copyWith(color: _CalcThemeColors.warmRed),
    font2: _baseTextTheme.font2.copyWith(color: _CalcThemeColors.warmRed),
    font3: _baseTextTheme.font3.copyWith(color: _CalcThemeColors.warmRed),
  ),
  crimsonRedTextTheme: CalcTextTheme(
    font1: _baseTextTheme.font1.copyWith(color: _CalcThemeColors.crimsonRed),
    font2: _baseTextTheme.font2.copyWith(color: _CalcThemeColors.crimsonRed),
    font3: _baseTextTheme.font3.copyWith(color: _CalcThemeColors.crimsonRed),
  ),
  limeGreenishTextTheme: CalcTextTheme(
    font1: _baseTextTheme.font1.copyWith(color: _CalcThemeColors.limeGreenish),
    font2: _baseTextTheme.font2.copyWith(color: _CalcThemeColors.limeGreenish),
    font3: _baseTextTheme.font3.copyWith(color: _CalcThemeColors.limeGreenish),
  ),
  whiteTextTheme: CalcTextTheme(
    font1: _baseTextTheme.font1.copyWith(color: _CalcThemeColors.white),
    font2: _baseTextTheme.font2.copyWith(color: _CalcThemeColors.white),
    font3: _baseTextTheme.font3.copyWith(color: _CalcThemeColors.white),
  ),
  greyTextTheme: CalcTextTheme(
    font1: _baseTextTheme.font1.copyWith(color: _CalcThemeColors.grey),
    font2: _baseTextTheme.font2.copyWith(color: _CalcThemeColors.grey),
    font3: _baseTextTheme.font3.copyWith(color: _CalcThemeColors.grey),
  ),
  ashGreyTextTheme: CalcTextTheme(
    font1: _baseTextTheme.font1.copyWith(color: _CalcThemeColors.ashGrey),
    font2: _baseTextTheme.font2.copyWith(color: _CalcThemeColors.ashGrey),
    font3: _baseTextTheme.font3.copyWith(color: _CalcThemeColors.ashGrey),
  ),
  darkGreyTextTheme: CalcTextTheme(
    font1: _baseTextTheme.font1.copyWith(color: _CalcThemeColors.darkGrey),
    font2: _baseTextTheme.font2.copyWith(color: _CalcThemeColors.darkGrey),
    font3: _baseTextTheme.font3.copyWith(color: _CalcThemeColors.darkGrey),
  ),
  lightGreyTextTheme: CalcTextTheme(
    font1: _baseTextTheme.font1.copyWith(color: _CalcThemeColors.lightGrey),
    font2: _baseTextTheme.font2.copyWith(color: _CalcThemeColors.lightGrey),
    font3: _baseTextTheme.font3.copyWith(color: _CalcThemeColors.lightGrey),
  ),

  textTheme: _baseTextTheme,
  colors: CalcColorTheme(
    coal: _CalcThemeColors.coal,
    reddish: _CalcThemeColors.reddish,
    warmRed: _CalcThemeColors.warmRed,
    crimsonRed: _CalcThemeColors.crimsonRed,
    limeGreenish: _CalcThemeColors.limeGreenish,
    white: _CalcThemeColors.white,
    grey: _CalcThemeColors.grey,
    ashGrey: _CalcThemeColors.ashGrey,
    darkGrey: _CalcThemeColors.darkGrey,
    lightGrey: _CalcThemeColors.lightGrey,
  ),

  //Button Themes
  numberBtnThemeData: CalcButtonThemeData(
      labelStyle: _CalcFontStyles.font2.copyWith(color: _CalcThemeColors.coal),
      backgroundColor: _CalcThemeColors.ashGrey,
      disabledLabelStyle:
          _CalcFontStyles.font2.copyWith(color: _CalcThemeColors.darkGrey),
      disabledBackgroundColor: _CalcThemeColors.lightGrey),

  resetBtnThemeData: CalcButtonThemeData(
      labelStyle: _CalcFontStyles.font2.copyWith(color: _CalcThemeColors.white),
      backgroundColor: _CalcThemeColors.warmRed,
      disabledLabelStyle:
          _CalcFontStyles.font2.copyWith(color: _CalcThemeColors.darkGrey),
      disabledBackgroundColor: _CalcThemeColors.reddish),

  operationsBtnThemeData: CalcButtonThemeData(
      labelStyle: _CalcFontStyles.font2.copyWith(color: _CalcThemeColors.white),
      backgroundColor: _CalcThemeColors.limeGreenish,
      disabledLabelStyle:
          _CalcFontStyles.font2.copyWith(color: _CalcThemeColors.darkGrey),
      disabledBackgroundColor: _CalcThemeColors.limeGreenish),

  ///
  displayTxt: TextStyle(
      fontSize: 32.0,
      height: 1.125,
      letterSpacing: -0.3,
      fontWeight: FontWeight.w500,
      color: _CalcThemeColors.coal),
  title: TextStyle(
      fontSize: 22.0,
      height: 1.272,
      letterSpacing: -0.3,
      fontWeight: FontWeight.w500,
      color: _CalcThemeColors.coal),

  ///
);

/// The Calculator Theme - Known as the Calc Theme.
///
/// This is the theme for the Calc UI Components that make up the
/// Calc design system for the  application.
///
/// **Note**
/// While the CalcTheme and [CalcThemeData] are modelled on the material
/// [Theme and ThemeData] classes, this is separate to the Flutter
/// Material [Theme] class. See Usage below.
///
///
/// The values for the theme are provided by [CalcThemeData].
/// (The properties of [CalcThemeData] are the design tokens for the UI.)
/// To get the CalcThemeData from any widget call
///
/// `final themeData = CalcTheme.of(context);
///
/// The default theme values (aka fallback theme) used is considered the
/// standard theme configuration. This can be replaced in the
/// CalcThemeData constructor if needed.
///
/// Currently there is no support for light/dark modes. This is not part of
/// the Calculator look and feel. This will be added though
///
/// As part of the CalcThemeData class there are properties for the themes
/// defined by each Calculator component. The default versions of these
/// component-level themes are defined by default.
///
/// # Colors
///
/// The CalcThemeData provides all the colors for the app.
/// ```
/// final themeData = CalcTheme.of(context);
/// final coal = themeData.colors.coal;
/// ```
///
/// # TextThemes
///
/// A set of fonts are defined for the app (font1 to font3).
/// These are available via `CalcThemeData.textTheme`;
///
/// In addition there is a color-specific variant of the textTheme.
/// This means it is possible to get a text style in a specific color.
/// (Not all colors are supported - only those that are currently used for
/// text).
///
/// ```
/// final themeData = CalcTheme.of(context);
///
/// Get font1 in the coal color;
/// final coalFont1 = themeData.coalTextTheme.font1;
///
///
/// Get font5 in the reddish color;
/// final reddishFont5 = themeData.reddishTextTheme.font5;
///
/// ```
///
///# Usage
///
/// To use the default theme values, create an CalcTheme as the parent of
/// the root of your app.
///
///
/// To use non-default theme values explicitly, pass in the values when
/// constructing the CalcTheme.
///
///
/// ```
/// return MaterialApp(
///       home: Scaffold(
///         body: SafeArea(
///           child: Container(
///             alignment: Alignment.center,
///               child: CalcTheme(
///                 child: Calculator())),
///                   )),
///                     );
///
///  ```
/// **The current implementation of CalcThemeData does not support merging
/// theme values with the defaults (i.e. using `copyWith`).
/// A complete CalcThemeData must be provided.**
///
///# EXTRA INFORMATION
/// * To learn more about creating your own design system check here:
///
/// https://youtu.be/0Bn0Sp2ALMA?t=130
///
class CalcTheme extends InheritedWidget {
  CalcTheme({CalcThemeData data, @required this.child})
      : this.data = data ?? _default,
        super(child: child);

  /// The design tokens used by UI Components to apply styling.
  final CalcThemeData data;

  /// The [CalcTheme] will be available via the `of(BuildContext context)`
  /// to all chilren of this Widget. Typically this is a Widget very near the
  /// top of the widget tree.
  final Widget child;

  /// Use to get a reference to the nearest available [CalcThemeData] anywhere
  /// in the widget tree below the child widget.
  ///
  /// ```
  /// var themeData = CalcTheme.of(context);
  /// ```
  static CalcThemeData of(BuildContext context) {
    final Logger staticLogger = Logger();
    final CalcTheme currentTheme =
        context.dependOnInheritedWidgetOfExactType<CalcTheme>();
    if (currentTheme == null) {
      staticLogger.w("NCBATheme missing. Returning the default theme");
      return _default;
    }
    return currentTheme.data;
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return data == (oldWidget as CalcTheme).data;
  }
}

/// # Values Making Up the CalcTheme
///
/// The values that make up an [CalcTheme].
///
/// The fields in this class represent the design tokens in the Calculator
/// design system. They are referenced directly by the UI Component Widgets
/// for the design system. This means that changing the values will change
/// the visual styling of the UI Components.
///
/// _Note that there is currently no support for creating an CalcThemeData
/// instance based on existing values. For example, it is not possible to
/// create a new CalcThemeData instance based on the default values used
/// by the [CalcTheme] and then override some of the values.
///
class CalcThemeData {
  CalcThemeData({
    @required this.coalTextTheme,
    @required this.reddishTextTheme,
    @required this.warmRedTextTheme,
    @required this.crimsonRedTextTheme,
    @required this.limeGreenishTextTheme,
    @required this.whiteTextTheme,
    @required this.greyTextTheme,
    @required this.ashGreyTextTheme,
    @required this.darkGreyTextTheme,
    @required this.lightGreyTextTheme,
    @required this.textTheme,
    @required this.colors,
    @required this.numberBtnThemeData,
    @required this.resetBtnThemeData,
    @required this.operationsBtnThemeData,
    this.coal,
    this.reddish,
    this.warmRed,
    this.crimsonRed,
    this.limeGreenish,
    this.white,
    this.grey,
    this.ashGrey,
    this.darkGrey,
    this.lightGrey,
    this.displayTxt,
    this.title,
  });

  final Color coal;
  final Color reddish;
  final Color warmRed;
  final Color crimsonRed;
  final Color limeGreenish;
  final Color white;
  final Color grey;
  final Color ashGrey;
  final Color darkGrey;
  final Color lightGrey;

  final TextStyle displayTxt;
  final TextStyle title;

  final CalcTextTheme coalTextTheme;
  final CalcTextTheme reddishTextTheme;
  final CalcTextTheme warmRedTextTheme;
  final CalcTextTheme crimsonRedTextTheme;
  final CalcTextTheme limeGreenishTextTheme;
  final CalcTextTheme whiteTextTheme;
  final CalcTextTheme greyTextTheme;
  final CalcTextTheme ashGreyTextTheme;
  final CalcTextTheme darkGreyTextTheme;
  final CalcTextTheme lightGreyTextTheme;

  final CalcTextTheme textTheme;
  final CalcColorTheme colors;

  final CalcButtonThemeData numberBtnThemeData;
  final CalcButtonThemeData resetBtnThemeData;
  final CalcButtonThemeData operationsBtnThemeData;
}
