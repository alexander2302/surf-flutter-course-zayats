import 'package:flutter/material.dart';
import 'package:places/assets/colors.dart' as colors;
import 'package:places/assets/styles.dart' as styles;

var lightTheme = ThemeData(
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
  hintColor: colors.whiteGreen,
  textTheme: TextTheme(
    headline1: styles.whiteHeadline1,
    headline2: styles.whiteHeadline2,
    headline3: styles.whiteHeadline3,
    headline4: styles.whiteHeadline4,
    headline5: styles.whiteHeadline5,
  ),
);

var darkTheme = ThemeData(
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
  hintColor: colors.blackGreen,
  textTheme: TextTheme(
    headline1: styles.blackHeadline1,
    headline2: styles.blackHeadline2,
    headline3: styles.blackHeadline3,
    headline4: styles.blackHeadline4,
    headline5: styles.blackHeadline5,
  ),
);
