import 'package:flutter/material.dart';
import 'package:places/assets/constants_color.dart' as ConstantsColor;

final lightTheme = ThemeData(
  accentColor: ConstantsColor.whiteMain,
  primaryColor: ConstantsColor.ltPrimaryColorGray,
  scaffoldBackgroundColor: Colors.white,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: ConstantsColor.whiteMain,
    unselectedItemColor: ConstantsColor.whiteSecondary,
  ),
  tabBarTheme: TabBarTheme(
    indicator: BoxDecoration(
      color: ConstantsColor.whiteSecondary,
      borderRadius: BorderRadius.circular(40),
    ),
    unselectedLabelColor: ConstantsColor.blackInactive,
    labelColor: Colors.white,
  ),
  splashColor: Colors.transparent,
  highlightColor: Colors.transparent,
);

final darkTheme = ThemeData(
  accentColor: Colors.white,
  primaryColor: ConstantsColor.dtPrimaryColor,
  scaffoldBackgroundColor: ConstantsColor.dtBlackMain,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: ConstantsColor.dtBlackMain,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.white,
  ),
  tabBarTheme: TabBarTheme(
    indicator: BoxDecoration(
      color: ConstantsColor.whiteSecondary,
      borderRadius: BorderRadius.circular(40),
    ),
    unselectedLabelColor: ConstantsColor.blackInactive,
    labelColor: Colors.white,
  ),
  splashColor: Colors.transparent,
  highlightColor: Colors.transparent,
);
