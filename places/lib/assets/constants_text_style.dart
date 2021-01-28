import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:places/assets/constants_color.dart' as ConstantsColor;

const TextStyle appBarTitleStyle = TextStyle(
  color: Colors.black,
  fontSize: 32,
  fontWeight: FontWeight.w700,
  fontFamily: 'RobotoBlack',
);

TextStyle whiteTitleStyle = const TextStyle(
  fontSize: 14,
  color: Colors.white,
  fontWeight: FontWeight.w700,
  fontStyle: FontStyle.normal,
);

TextStyle whiteSecondaryTitleStyle = const TextStyle(
  fontSize: 16,
  color: ConstantsColor.whiteSecondary,
  fontWeight: FontWeight.w500,
  fontStyle: FontStyle.normal,
);

TextStyle whiteSecondary2TitleStyle = const TextStyle(
  fontSize: 14,
  color: ConstantsColor.whiteSecondary2,
  fontWeight: FontWeight.w400,
  fontStyle: FontStyle.normal,
);
