import 'package:flutter/material.dart';

class PopDSColors {
  static final PopDSColors _instance = PopDSColors._internal();

  factory PopDSColors() {
    return _instance;
  }

  PopDSColors._internal();

  static MaterialColor primary = generatedColor([0xFF8094B6]);
  static MaterialColor primaryVariant = generatedColor([0xFF8094B6]);
  static MaterialColor secundary = generatedColor([0xFF8FA9C7]);
  static MaterialColor terciary = generatedColor([0xFF717A99]);
  static MaterialColor backgroundLight = generatedColor([0xFF717A99]);
  static MaterialColor backgroundDark = generatedColor([0xFF717A99]);
  static MaterialColor neutrals = generatedColor([0xFF717172]);
  static MaterialColor alertSucess = generatedColor([0xFF3CB731]);
  static MaterialColor alertWarning = generatedColor([0xFFE19E39]);
  static MaterialColor alertError = generatedColor([0xFFE15D5D]);

  static void setColors({
    List<int>? primaryColor,
    List<int>? primaryVariantColor,
    List<int>? secundaryColor,
    List<int>? terciaryColor,
    List<int>? backgroundLight,
    List<int>? backgroundDark,
    List<int>? neutralsColor,
    List<int>? alertSucessColor,
    List<int>? alertWarningColor,
    List<int>? alertErrorColor,
  }) {
    if (primaryColor != null) {
      primary = generatedColor(primaryColor);
    }
    if (primaryVariantColor != null) {
      primaryVariant = generatedColor(primaryVariantColor);
    }
    if (secundaryColor != null) {
      secundary = generatedColor(secundaryColor);
    }

    if (terciaryColor != null) {
      terciary = generatedColor(terciaryColor);
    }
    if (neutralsColor != null) {
      neutrals = generatedColor(neutralsColor);
    }
    if (alertSucessColor != null) {
      alertSucess = generatedColor(alertSucessColor);
    }
    if (alertWarningColor != null) {
      alertWarning = generatedColor(alertWarningColor);
    }
    if (alertErrorColor != null) {
      alertError = generatedColor(alertErrorColor);
    }
  }

  static MaterialColor generatedColor(List<int> colorValue) {
    List<Color> colors = colorValue.map((e) => Color(e)).toList();
    Map<int, Color> colorMap = {};
    int keyValue = 100;
    for (int i = 0; i < colors.length; i++) {
      colorMap[keyValue] = colors[i];
      keyValue += 100;
    }
    return MaterialColor(colors[0].value, colorMap);
  }

  static const Color transparent = Colors.transparent;
  static const Color neutralBlack = Color(0xFF000000);
  static const Color neutralWhite = Color(0xFFFFFFFF);
  static const Color disabled = Color(0xFF898C91);
  static const Color textButtonDisabledSolidDefault = Color(0xFFA1A3A7);
  static const Color buttonDisabledSolidDefaultBackground = Color(0xFFE7E8E9);
  static const Color divider = Color(0xFFE7E8E9);

  static Color corBackground(BuildContext context) {
    if (MediaQuery.of(context).platformBrightness == Brightness.dark) {
      return PopDSColors.backgroundLight;
    }
    return PopDSColors.backgroundDark;
  }
}
