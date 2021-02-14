import 'package:flutter/material.dart';
import 'package:places/assets/colors.dart' as colors;

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
    headline1: TextStyle(
      fontSize: 24,
      color: colors.whiteSecondary,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    ),
    headline2: TextStyle(
      fontSize: 14,
      color: colors.whiteSecondary,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headline3: TextStyle(
      fontSize: 14,
      color: colors.whiteSecondary,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    ),
    headline4: TextStyle(
      fontSize: 14,
      color: colors.whiteGreen,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headline5: TextStyle(
      fontSize: 16,
      color: colors.whiteSecondary,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
    // headline6: TextStyle(),
    // bodyText1: TextStyle(),
    // bodyText2: TextStyle(),
    // subtitle1: TextStyle(),
    // subtitle2: TextStyle(),
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
    headline1: TextStyle(
      fontSize: 24,
      color: colors.blackWhite,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    ),
    headline2: TextStyle(
      fontSize: 14,
      color: colors.blackWhite,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headline3: TextStyle(
      fontSize: 14,
      color: colors.blackSecondary2,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    ),
    headline4: TextStyle(
      fontSize: 14,
      color: colors.blackGreen,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headline5: TextStyle(
      fontSize: 16,
      color: colors.blackWhite,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
    // headline6: TextStyle(),
    // bodyText1: TextStyle(),
    // bodyText2: TextStyle(),
    // subtitle1: TextStyle(),
    // subtitle2: TextStyle(),
  ),
);
