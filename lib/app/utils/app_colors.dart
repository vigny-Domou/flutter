import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color.fromRGBO(0, 155, 255, 1);
  static const Color secondary = Color.fromRGBO(137, 207, 240, 1);
  static const Color primaryText = Color.fromRGBO(111, 143, 175, 1);
  static const Color grayScale = Color.fromRGBO(96, 130, 182, 1);
  static const Color primaryGrayText = Color.fromRGBO(96, 130, 182, 1);

  static MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    strengths.forEach((strength) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    });
    return MaterialColor(color.value, swatch);
  }

  static hexToColor(String hexString) {
    var hexColor = hexString.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}
