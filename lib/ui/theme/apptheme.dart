import 'package:flutter/material.dart';

class AppTheme {
  ThemeData lighttheme(context) => ThemeData(
      brightness: Brightness.light, scaffoldBackgroundColor: Colors.white);

  ThemeData darktheme(context) => ThemeData(
      brightness: Brightness.dark, scaffoldBackgroundColor: Colors.grey);
}
