import 'package:flutter/material.dart';

List<Color> _colorTheme = [
  Colors.blue,
  Colors.red,
  Colors.green,
  Color(0xFF00E676)
];

class AppTheme {
  int selectColor;

  AppTheme({this.selectColor = 0});

  ThemeData getThemeData() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorTheme[selectColor],
      appBarTheme: AppBarTheme(backgroundColor: _colorTheme[selectColor]),
      brightness: Brightness.light,
    );
  }
}
