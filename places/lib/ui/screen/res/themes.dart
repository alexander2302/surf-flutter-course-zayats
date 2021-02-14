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
  secondaryHeaderColor: Colors.red,
  accentColor: colors.whiteMain,
  primaryColor: colors.ltPrimaryColorGray,
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
);

var _darkTheme = ThemeData(
  secondaryHeaderColor: Colors.orange,
  accentColor: Colors.white,
  primaryColor: colors.dtPrimaryColor,
  scaffoldBackgroundColor: colors.dtBlackMain,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: colors.dtBlackMain,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.white,
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
);
