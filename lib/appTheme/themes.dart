import 'package:flutter/material.dart';

class AppTheme {
  static const String FONT_FAMILY = 'San Francisco';
  static const double SMALL_TEXT_SIZE = 12.0;
  static const double DEFAULT_TEXT_SIZE = 14.0;
  static const double LARGE_TEXT_SIZE = 16.0;
  static const double EXTRA_LARGE_TEXT_SIZE = 18.0;
  static const double HUGE_TEXT_SIZE = 20.0;

  static String currentThemeMode = "dark";
  static Color scaffoldBackgroundColor = const Color(0xFF27374D);
  static Color appBar = const Color(0xFF3C5A99);
  static Color subjectChipBackground = const Color(0xFF415A77);
  static Color primaryTextColor = Colors.white;
  static Color seconderyTextColor = const Color(0xFFD3D3D3);
  static Color cardColor = const Color(0xFF334C6D);
  static Color gameInfoChip = const Color(0xFF415A77);
  static Color faviorteIcon = const Color(0xFFFFD700);
  static Color buttonColor = const Color(0xFF3C5A99);
  static Color searchBarContainer = const Color(0xFF334C6D);
  static Color dropDownMenu = const Color(0xFF334C6D);
  static Color tapColor = const Color(0xFF3C5A99);
  static Color selectedTap = const Color(0xFFFFA500);
  static Color buttonIconColor = const Color(0xFFFFA500);
  static Color playerCard = const Color(0xFF334C6D);
  static Color accentColor = Colors.orange;
  static Color errorColor = Colors.pink;

  static setThemeMode(String mode) {
    currentThemeMode = mode;

    switch (mode) {
      case 'light':
        appBar = Colors.blue;
        scaffoldBackgroundColor = Colors.orange;
        subjectChipBackground = Colors.pink;
        cardColor = Colors.blue;
        buttonColor = Colors.yellow;
        buttonIconColor = Colors.yellow;
        searchBarContainer = Colors.yellow;
        primaryTextColor = Colors.blue;
        accentColor = Colors.orange;
        errorColor = Colors.pink;
        break;
      case 'dark':
        appBar = const Color(0xFF3C5A99);
        scaffoldBackgroundColor = const Color(0xFF27374D);
        primaryTextColor = Colors.white;
        subjectChipBackground = const Color(0xFF415A77);
        seconderyTextColor = const Color(0xFFD3D3D3);
        cardColor = const Color(0xFF334C6D);
        gameInfoChip = const Color(0xFF415A77);
        faviorteIcon = const Color(0xFFFFD700);
        buttonColor = const Color(0xFF3C5A99);
        searchBarContainer = const Color(0xFF334C6D);
        buttonIconColor = const Color(0xFFFFA500);
        accentColor = Colors.orange;
        errorColor = Colors.pink;
        break;
      default:
        break;
    }
  }
}
