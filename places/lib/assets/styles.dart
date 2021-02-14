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
TextStyle normalS16W500 = TextStyle(
  fontSize: 16,
  color: colors.getColorCardTitle(),
  fontWeight: FontWeight.w500,
  fontStyle: FontStyle.normal,
);

TextStyle normalS14W400Green = TextStyle(
  fontSize: 14,
  color: colors.getGreen(),
  fontWeight: FontWeight.w400,
  fontStyle: FontStyle.normal,
);

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

TextStyle normalS14W400whiteSecondary = TextStyle(
  fontSize: 14,
  color: colors.getColorCardTitle(),
  fontWeight: FontWeight.w400,
  fontStyle: FontStyle.normal,
);

TextStyle normalS24W700CardTitle = TextStyle(
  fontSize: 24,
  color: colors.getColorCardTitle(),
  fontWeight: FontWeight.w700,
  fontStyle: FontStyle.normal,
);

TextStyle normalS14W700whiteSecondary = TextStyle(
  fontSize: 14,
  color: colors.getColorCardType(),
  fontWeight: FontWeight.w700,
  fontStyle: FontStyle.normal,
);
