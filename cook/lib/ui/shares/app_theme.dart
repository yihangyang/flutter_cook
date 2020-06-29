import 'package:flutter/material.dart';

class AppTheme {
  // 1.common
  static const double bodyFontSize = 14;
  static const double smallFontSize = 16;
  static const double normalFontSize = 20;
  static const double largeFontSize = 24;
  static const double xlargeFontSize = 26;

  // 2. normal modul
  static final Color norTextColor = Colors.black;
  static final ThemeData norTheme = ThemeData(
    primarySwatch: Colors.pink,
    accentColor: Colors.amber,
    canvasColor: Color.fromRGBO(255, 254, 222, 1),
    textTheme: TextTheme(
      bodyText1: TextStyle(fontSize: bodyFontSize, color: norTextColor),
      headline1: TextStyle(fontSize: smallFontSize, color: norTextColor),
      headline2: TextStyle(fontSize: normalFontSize, color: norTextColor),
      headline3: TextStyle(fontSize: largeFontSize, color: norTextColor),
      headline4: TextStyle(fontSize: xlargeFontSize, color: norTextColor),
    )
  );

  // 3. dark modul
  static final Color darkTextColor = Colors.red;
  static final ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.black,
    textTheme: TextTheme(
      bodyText1: TextStyle(fontSize: normalFontSize, color: darkTextColor),
      headline1: TextStyle(fontSize: smallFontSize, color: darkTextColor),
      headline2: TextStyle(fontSize: normalFontSize, color: darkTextColor),
      headline3: TextStyle(fontSize: largeFontSize, color: darkTextColor),
    )
  );
}