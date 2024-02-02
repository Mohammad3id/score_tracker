import 'package:flutter/material.dart';
import 'package:score_tracker/core/themes/main_colors.dart';

class AppThemes {
  static final primaryColor = MainColors.green.value;

  static const _lightSurface = Color(0xFFE5E5E5);
  static const _darkSurface = Color(0xFF262626);

  static const _lightScaffoldBackground = Color(0xFFFFFFFF);
  static const _darkScaffoldBackground = Color(0xFF1B1B1B);

  static final lightTheme = ThemeData(
    colorSchemeSeed: primaryColor,
    brightness: Brightness.light,
    scaffoldBackgroundColor: _lightScaffoldBackground,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
    ),
    cardTheme: const CardTheme(
      surfaceTintColor: _lightSurface,
    ),
    navigationBarTheme: NavigationBarThemeData(
      indicatorColor: primaryColor.withAlpha(64),
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: _lightScaffoldBackground,
    ),
  );

  static final darkTheme = ThemeData(
    colorSchemeSeed: primaryColor,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: _darkScaffoldBackground,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
    ),
    cardTheme: const CardTheme(
      surfaceTintColor: _darkSurface,
    ),
    navigationBarTheme: NavigationBarThemeData(
      indicatorColor: primaryColor,
      backgroundColor: _darkSurface,
      surfaceTintColor: _darkSurface,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: _darkScaffoldBackground,
    ),
  );
}
