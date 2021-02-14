import 'package:flutter/material.dart';
import 'package:places/ui/screen/res/themes.dart' as themes;

//----
const Color whiteMain = const Color.fromARGB(255, 37, 40, 73);
const Color whiteSecondary = const Color.fromARGB(255, 59, 62, 91);
const Color whiteSecondary2 = const Color.fromARGB(255, 124, 126, 146);
Color whiteGreen = Color.fromARGB(255, 76, 175, 80);
const Color whiteYellow = Color.fromARGB(255, 252, 221, 61);
const Color whiteRed = Color.fromARGB(255, 239, 67, 67);
const Color whiteWhite = Color.fromARGB(255, 255, 255, 255);
const Color whiteInactiveBlack = const Color.fromARGB(143, 124, 126, 146);
const Color whiteBackground = const Color.fromARGB(255, 245, 245, 245);

//---
const Color blackMain = const Color.fromARGB(255, 33, 34, 44);
const Color blackSecondary = const Color.fromARGB(255, 59, 62, 91);
const Color blackSecondary2 = const Color.fromARGB(255, 124, 126, 146);
Color blackGreen = Color.fromARGB(255, 106, 218, 111);
const Color blackYellow = Color.fromARGB(255, 255, 231, 105);
const Color blackRed = Color.fromARGB(255, 207, 42, 42);
const Color blackWhite = Color.fromARGB(255, 255, 255, 255);
const Color blackInactiveBlack = const Color.fromARGB(124, 126, 146, 146);
const Color blackDark = const Color.fromARGB(255, 26, 26, 32);

Color getColorCardTitle() {
  return themes.isDarkTheme() ? blackWhite : whiteSecondary;
}

Color getMain() {
  return themes.isDarkTheme() ? blackMain : whiteMain;
}

Color getSecondary() {
  return themes.isDarkTheme() ? blackSecondary : whiteSecondary;
}

Color getSecondary2() {
  return themes.isDarkTheme() ? blackSecondary2 : whiteSecondary2;
}

Color getGreen() {
  return themes.isDarkTheme() ? blackGreen : whiteGreen;
}

Color getYellow() {
  return themes.isDarkTheme() ? blackYellow : whiteYellow;
}

Color getRed() {
  return themes.isDarkTheme() ? blackRed : whiteRed;
}

Color getWhite() {
  return themes.isDarkTheme() ? blackWhite : whiteWhite;
}

Color getInactiveBlack() {
  return themes.isDarkTheme() ? blackInactiveBlack : whiteInactiveBlack;
}

Color getBackground() {
  return themes.isDarkTheme() ? blackDark : whiteBackground;
}
