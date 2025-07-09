import 'package:flutter/material.dart';

class AppTheme{
  static final ThemeData light = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.indigo,
    fontFamily: 'Poppins',
    // Define other light theme specifics
  );

  static final ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Poppins',
    // Define dark theme specifics
  );
}