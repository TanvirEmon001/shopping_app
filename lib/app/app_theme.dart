import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData _lightThemeData = ThemeData(
    brightness: .light,
    scaffoldBackgroundColor: Colors.white
  );

  static final ThemeData _darkThemeData = ThemeData(
      brightness: .dark,
      scaffoldBackgroundColor: Colors.black
  );

  static ThemeData get lightTheme => _lightThemeData;
  static ThemeData get darkTheme => _darkThemeData;
}