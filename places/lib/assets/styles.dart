import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:places/assets/colors.dart' as colors;

/// without color
final TextStyle normalS32W700 = TextStyle(
  fontSize: 32,
  fontWeight: FontWeight.w700,
  fontFamily: 'RobotoBlack',
  fontStyle: FontStyle.normal,
);

TextStyle normalS18W500 = const TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w500,
  fontStyle: FontStyle.normal,
);

////////////////////////////////////////////////////////////////////////////////
/// with color
TextStyle normalS14W400Secondary2 = const TextStyle(
  fontSize: 14,
  color: colors.whiteSecondary2,
  fontWeight: FontWeight.w400,
  fontStyle: FontStyle.normal,
);

TextStyle normalS14W700white = const TextStyle(
  fontSize: 14,
  color: Colors.white,
  fontWeight: FontWeight.w700,
  fontStyle: FontStyle.normal,
);

///for ThemeData
///white
TextStyle whiteHeadline1 = const TextStyle(
  fontSize: 24,
  color: colors.whiteSecondary,
  fontWeight: FontWeight.w700,
  fontStyle: FontStyle.normal,
);

TextStyle whiteHeadline2 = const TextStyle(
  fontSize: 14,
  color: colors.whiteSecondary,
  fontWeight: FontWeight.w400,
  fontStyle: FontStyle.normal,
);

TextStyle whiteHeadline3 = const TextStyle(
  fontSize: 14,
  color: colors.whiteSecondary,
  fontWeight: FontWeight.w700,
  fontStyle: FontStyle.normal,
);

TextStyle whiteHeadline4 = const TextStyle(
  fontSize: 14,
  color: colors.whiteGreen,
  fontWeight: FontWeight.w400,
  fontStyle: FontStyle.normal,
);

TextStyle whiteHeadline5 = const TextStyle(
  fontSize: 16,
  color: colors.whiteSecondary,
  fontWeight: FontWeight.w500,
  fontStyle: FontStyle.normal,
);

///blac
TextStyle blackHeadline1 = const TextStyle(
  fontSize: 24,
  color: colors.blackWhite,
  fontWeight: FontWeight.w700,
  fontStyle: FontStyle.normal,
);

TextStyle blackHeadline2 = const TextStyle(
  fontSize: 14,
  color: colors.blackWhite,
  fontWeight: FontWeight.w400,
  fontStyle: FontStyle.normal,
);

TextStyle blackHeadline3 = const TextStyle(
  fontSize: 14,
  color: colors.blackSecondary2,
  fontWeight: FontWeight.w700,
  fontStyle: FontStyle.normal,
);

TextStyle blackHeadline4 = const TextStyle(
  fontSize: 14,
  color: colors.blackGreen,
  fontWeight: FontWeight.w400,
  fontStyle: FontStyle.normal,
);

TextStyle blackHeadline5 = const TextStyle(
  fontSize: 16,
  color: colors.blackWhite,
  fontWeight: FontWeight.w500,
  fontStyle: FontStyle.normal,
);
