import 'package:flutter/material.dart';
import 'light_theme.dart';
import 'dark_theme.dart';

class AppTheme {
  static ThemeData getTheme(bool isDark) {
    return isDark ? darkTheme : lightTheme;
  }
}
