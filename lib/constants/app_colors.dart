import 'dart:math';

import 'package:flutter/material.dart';

abstract class Palette {
  static const Color primary = Color(0xffFCE900);
  static const Color scaffoldBackgroundColor = Color(0xffFFFFFF);
  static const Color black = Color(0xff000000);
  static const Color green = Color.fromARGB(255, 9, 232, 157);
  static const Color white = Color(0xffFFFFFF);
  static const Color grey = Color.fromARGB(255, 209, 208, 208);
  static const Color lightBlue = Color.fromARGB(255, 175, 242, 247);
  static const Color darkGrey = Color.fromARGB(255, 131, 128, 128);
  static const Color lightGrey = Color.fromARGB(255, 244, 241, 241);
  static const Color mainBlue = Color.fromARGB(255, 50, 77, 195);


}

MaterialColor generateMaterialColor(Color color) {
  return MaterialColor(color.value, {
    50: tintColor(color, 0.9),
    100: tintColor(color, 0.8),
    200: tintColor(color, 0.6),
    300: tintColor(color, 0.4),
    400: tintColor(color, 0.2),
    500: color,
    600: shadeColor(color, 0.1),
    700: shadeColor(color, 0.2),
    800: shadeColor(color, 0.3),
    900: shadeColor(color, 0.4),
  });
}

int tintValue(int value, double factor) {
  return max(0, min((value + ((255 - value) * factor)).round(), 255));
}

Color tintColor(Color color, double factor) {
  return Color.fromRGBO(
    tintValue(color.red, factor),
    tintValue(color.green, factor),
    tintValue(color.blue, factor),
    1,
  );
}

int shadeValue(int value, double factor) {
  return max(0, min(value - (value * factor).round(), 255));
}

Color shadeColor(Color color, double factor) {
  return Color.fromRGBO(
    shadeValue(color.red, factor),
    shadeValue(color.green, factor),
    shadeValue(color.blue, factor),
    1,
  );
}
