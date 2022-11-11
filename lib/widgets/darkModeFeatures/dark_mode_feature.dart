import 'package:flutter/material.dart';
// import 'package:portfolio/constants/colors.dart';

class DarkTheme {
  bool iconBool = false;

  IconData iconDark = Icons.nights_stay;

  ThemeData darkTheme = ThemeData(
    // primarySwatch: Colors.red,
    brightness: Brightness.dark,
  );
}

class LightTheme {
  bool iconBool = false;

  IconData iconLight = Icons.wb_sunny;

  ThemeData lightTheme = ThemeData(
    // primarySwatch: Colors.deepPurple,
    brightness: Brightness.light,
  );
}
