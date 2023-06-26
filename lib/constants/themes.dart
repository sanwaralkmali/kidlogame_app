import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.black,
  );

  static final ThemeData boysTheme = ThemeData(
    primaryColor: const Color.fromARGB(255, 84, 165, 232),
  );

  static final ThemeData girlsTheme = ThemeData(
    primaryColor: const Color.fromARGB(255, 233, 137, 169),
  );
}
