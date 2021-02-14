import 'package:flutter/material.dart';
import 'package:places/assets/colors.dart' as colors;

bool _isDark = false;
void initTheme({bool isDark}) {
  _isDark = isDark;
}

bool isDarkTheme() {
  return _isDark;
}

ThemeData getThemeData() => _isDark ? _darkTheme : _lightTheme;

var _lightTheme = ThemeData(
  accentColor: colors.whiteSecondary,
  unselectedWidgetColor: colors.whiteBackground,
  scaffoldBackgroundColor: Colors.white,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: colors.whiteMain,
    unselectedItemColor: colors.whiteSecondary,
  ),
  tabBarTheme: TabBarTheme(
    indicator: BoxDecoration(
      color: colors.whiteSecondary,
      borderRadius: BorderRadius.circular(40),
    ),
    unselectedLabelColor: colors.whiteInactiveBlack,
    labelColor: Colors.white,
  ),
  splashColor: Colors.transparent,
  highlightColor: Colors.transparent,
  errorColor: colors.whiteRed,
);

var _darkTheme = ThemeData(
  accentColor: colors.blackWhite,
  unselectedWidgetColor: colors.blackDark,
  scaffoldBackgroundColor: colors.blackMain,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: colors.blackMain,
    selectedItemColor: colors.blackWhite,
    unselectedItemColor: colors.blackWhite,
  ),
  tabBarTheme: TabBarTheme(
    indicator: BoxDecoration(
      color: colors.blackWhite,
      borderRadius: BorderRadius.circular(40),
    ),
    unselectedLabelColor: colors.whiteInactiveBlack,
    labelColor: colors.blackSecondary,
  ),
  splashColor: Colors.transparent,
  highlightColor: Colors.transparent,
  errorColor: colors.blackRed,
);
