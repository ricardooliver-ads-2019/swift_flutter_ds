import 'package:flutter/material.dart';

class SFDSColors {
  static final SFDSColors _instance = SFDSColors._internal();

  factory SFDSColors() {
    return _instance;
  }

  SFDSColors._internal();
  // Azul Cinza
  static MaterialColor primary = generatedColor([0xFF000000]);
  // Azul Cinza Escuro
  static MaterialColor primaryVariant = generatedColor([0xFF455A64]);
  // Cinza Claro
  // static MaterialColor secundary = generatedColor([0xFFB0BEC5]);
  static MaterialColor secundary = generatedColor([0xFF869FAA]);
  // Cinza Azul
  static MaterialColor terciary = generatedColor([0xFFCFD8DC]);
  // Branco Quebrado
  static MaterialColor backgroundLight = generatedColor([0xFFF5F5F5]);
  // Cinza Escuro
  static MaterialColor backgroundDark = generatedColor([0xFF37474F]);
  // Cinza Médio
  static MaterialColor neutrals = generatedColor([0xFF90A4AE]);
  static MaterialColor alertSucess = generatedColor([0xFF3CB731]);
  static MaterialColor alertWarning = generatedColor([0xFFDA8607]);
  static MaterialColor alertError = generatedColor([0xFFDA1E28]);

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
  // static const Color buttonDisabledSolidDefaultBackground = Color(0xFF869FAA);

  static Color corBackground(BuildContext context) {
    if (MediaQuery.of(context).platformBrightness == Brightness.dark) {
      return SFDSColors.backgroundLight;
    }
    return SFDSColors.backgroundDark;
  }
}
