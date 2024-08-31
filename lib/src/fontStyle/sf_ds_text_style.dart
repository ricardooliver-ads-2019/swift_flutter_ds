import 'package:flutter/material.dart';
import 'package:swift_flutter_ds/src/color/colors_export.dart';
import 'package:swift_flutter_ds/src/fontStyle/sf_ds_font_size.dart';
import 'package:swift_flutter_ds/src/fontStyle/sf_ds_font_weight.dart';
import 'package:swift_flutter_ds/src/fontStyle/sf_ds_line_heigth.dart';
import 'package:swift_flutter_ds/utils/sf_ds_strings.dart';

class SFDSTextStyle {
  final TextStyle strong;
  final TextStyle semiStrong;
  final TextStyle neutral;
  final TextStyle defaults;
  final TextStyle thin;

  const SFDSTextStyle._({
    required this.strong,
    required this.semiStrong,
    required this.neutral,
    required this.defaults,
    required this.thin,
  });

  factory SFDSTextStyle.hero1(
    BuildContext context, {
    Color? cor,
    bool lineHeigth = false,
    double? fontSize,
  }) {
    Color textColor = cor ?? corTexto(context);

    return SFDSTextStyle._(
      strong: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.xxxbig.value,
        fontWeight: SFDSFontWeight.strong.value,
        height: lineHeigth ? SFDSLineHeigth.xxlarge.value : null,
        color: textColor,
      ),
      defaults: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.xxxbig.value,
        fontWeight: SFDSFontWeight.defaults.value,
        height: lineHeigth ? SFDSLineHeigth.xxlarge.value : null,
        color: textColor,
      ),
      neutral: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.xxxbig.value,
        fontWeight: SFDSFontWeight.neutral.value,
        height: lineHeigth ? SFDSLineHeigth.xxlarge.value : null,
        color: textColor,
      ),
      semiStrong: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.xxxbig.value,
        fontWeight: SFDSFontWeight.semiStrong.value,
        height: lineHeigth ? SFDSLineHeigth.xxlarge.value : null,
        color: textColor,
      ),
      thin: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.xxxbig.value,
        fontWeight: SFDSFontWeight.thin.value,
        height: lineHeigth ? SFDSLineHeigth.xxlarge.value : null,
        color: textColor,
      ),
    );
  }

  factory SFDSTextStyle.hero2(
    BuildContext context, {
    Color? cor,
    bool lineHeigth = false,
    double? fontSize,
  }) {
    Color textColor = cor ?? corTexto(context);

    return SFDSTextStyle._(
      strong: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.xxbig.value,
        fontWeight: SFDSFontWeight.strong.value,
        height: lineHeigth ? SFDSLineHeigth.xxlarge.value : null,
        color: textColor,
      ),
      defaults: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.xxbig.value,
        fontWeight: SFDSFontWeight.defaults.value,
        height: lineHeigth ? SFDSLineHeigth.xxlarge.value : null,
        color: textColor,
      ),
      neutral: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.xxbig.value,
        fontWeight: SFDSFontWeight.neutral.value,
        height: lineHeigth ? SFDSLineHeigth.xxlarge.value : null,
        color: textColor,
      ),
      semiStrong: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.xxbig.value,
        fontWeight: SFDSFontWeight.semiStrong.value,
        height: lineHeigth ? SFDSLineHeigth.xxlarge.value : null,
        color: textColor,
      ),
      thin: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.xxbig.value,
        fontWeight: SFDSFontWeight.thin.value,
        height: lineHeigth ? SFDSLineHeigth.xxlarge.value : null,
        color: textColor,
      ),
    );
  }

  factory SFDSTextStyle.headline1(
    BuildContext context, {
    Color? cor,
    bool lineHeigth = false,
    double? fontSize,
  }) {
    Color textColor = cor ?? corTexto(context);

    return SFDSTextStyle._(
      strong: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.xbig.value,
        fontWeight: SFDSFontWeight.strong.value,
        height: lineHeigth ? SFDSLineHeigth.xlarge.value : null,
        color: textColor,
      ),
      defaults: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.xbig.value,
        fontWeight: SFDSFontWeight.defaults.value,
        height: lineHeigth ? SFDSLineHeigth.xlarge.value : null,
        color: textColor,
      ),
      neutral: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.xbig.value,
        fontWeight: SFDSFontWeight.neutral.value,
        height: lineHeigth ? SFDSLineHeigth.xlarge.value : null,
        color: textColor,
      ),
      semiStrong: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.xbig.value,
        fontWeight: SFDSFontWeight.semiStrong.value,
        height: lineHeigth ? SFDSLineHeigth.xlarge.value : null,
        color: textColor,
      ),
      thin: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.xbig.value,
        fontWeight: SFDSFontWeight.thin.value,
        height: lineHeigth ? SFDSLineHeigth.xlarge.value : null,
        color: textColor,
      ),
    );
  }
  factory SFDSTextStyle.headline2(
    BuildContext context, {
    Color? cor,
    bool lineHeigth = false,
    double? fontSize,
  }) {
    Color textColor = cor ?? corTexto(context);

    return SFDSTextStyle._(
      strong: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.big.value,
        fontWeight: SFDSFontWeight.strong.value,
        height: lineHeigth ? SFDSLineHeigth.large.value : null,
        color: textColor,
      ),
      defaults: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.big.value,
        fontWeight: SFDSFontWeight.defaults.value,
        height: lineHeigth ? SFDSLineHeigth.large.value : null,
        color: textColor,
      ),
      neutral: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.big.value,
        fontWeight: SFDSFontWeight.neutral.value,
        height: lineHeigth ? SFDSLineHeigth.large.value : null,
        color: textColor,
      ),
      semiStrong: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.big.value,
        fontWeight: SFDSFontWeight.semiStrong.value,
        height: lineHeigth ? SFDSLineHeigth.large.value : null,
        color: textColor,
      ),
      thin: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.big.value,
        fontWeight: SFDSFontWeight.thin.value,
        height: lineHeigth ? SFDSLineHeigth.large.value : null,
        color: textColor,
      ),
    );
  }
  factory SFDSTextStyle.headline3(
    BuildContext context, {
    Color? cor,
    bool lineHeigth = false,
    double? fontSize,
  }) {
    Color textColor = cor ?? corTexto(context);

    return SFDSTextStyle._(
      strong: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.xxxlarge.value,
        fontWeight: SFDSFontWeight.strong.value,
        height: lineHeigth ? SFDSLineHeigth.large.value : null,
        color: textColor,
      ),
      defaults: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.xxxlarge.value,
        fontWeight: SFDSFontWeight.defaults.value,
        height: lineHeigth ? SFDSLineHeigth.large.value : null,
        color: textColor,
      ),
      neutral: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.xxxlarge.value,
        fontWeight: SFDSFontWeight.neutral.value,
        height: lineHeigth ? SFDSLineHeigth.large.value : null,
        color: textColor,
      ),
      semiStrong: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.xxxlarge.value,
        fontWeight: SFDSFontWeight.semiStrong.value,
        height: lineHeigth ? SFDSLineHeigth.large.value : null,
        color: textColor,
      ),
      thin: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.xxxlarge.value,
        fontWeight: SFDSFontWeight.thin.value,
        height: lineHeigth ? SFDSLineHeigth.large.value : null,
        color: textColor,
      ),
    );
  }
  factory SFDSTextStyle.subtitle1(
    BuildContext context, {
    Color? cor,
    bool lineHeigth = false,
    double? fontSize,
  }) {
    Color textColor = cor ?? corTexto(context);

    return SFDSTextStyle._(
      strong: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.xxlarge.value,
        fontWeight: SFDSFontWeight.strong.value,
        height: lineHeigth ? SFDSLineHeigth.medium.value : null,
        color: textColor,
      ),
      defaults: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.xxlarge.value,
        fontWeight: SFDSFontWeight.defaults.value,
        height: lineHeigth ? SFDSLineHeigth.medium.value : null,
        color: textColor,
      ),
      neutral: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.xxlarge.value,
        fontWeight: SFDSFontWeight.neutral.value,
        height: lineHeigth ? SFDSLineHeigth.medium.value : null,
        color: textColor,
      ),
      semiStrong: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.xxlarge.value,
        fontWeight: SFDSFontWeight.semiStrong.value,
        height: lineHeigth ? SFDSLineHeigth.medium.value : null,
        color: textColor,
      ),
      thin: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.xxlarge.value,
        fontWeight: SFDSFontWeight.thin.value,
        height: lineHeigth ? SFDSLineHeigth.medium.value : null,
        color: textColor,
      ),
    );
  }
  factory SFDSTextStyle.subtitle2(
    BuildContext context, {
    Color? cor,
    double? fontSize,
    bool lineHeigth = false,
  }) {
    Color textColor = cor ?? corTexto(context);

    return SFDSTextStyle._(
      strong: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.xlarge.value,
        fontWeight: SFDSFontWeight.strong.value,
        height: lineHeigth ? SFDSLineHeigth.medium.value : null,
        color: textColor,
      ),
      defaults: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.xlarge.value,
        fontWeight: SFDSFontWeight.defaults.value,
        height: lineHeigth ? SFDSLineHeigth.medium.value : null,
        color: textColor,
      ),
      neutral: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.xlarge.value,
        fontWeight: SFDSFontWeight.neutral.value,
        height: lineHeigth ? SFDSLineHeigth.medium.value : null,
        color: textColor,
      ),
      semiStrong: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.xlarge.value,
        fontWeight: SFDSFontWeight.semiStrong.value,
        height: lineHeigth ? SFDSLineHeigth.medium.value : null,
        color: textColor,
      ),
      thin: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.xlarge.value,
        fontWeight: SFDSFontWeight.thin.value,
        height: lineHeigth ? SFDSLineHeigth.medium.value : null,
        color: textColor,
      ),
    );
  }
  factory SFDSTextStyle.subtitle3(
    BuildContext context, {
    Color? cor,
    bool lineHeigth = false,
    double? fontSize,
  }) {
    Color textColor = cor ?? corTexto(context);

    return SFDSTextStyle._(
      strong: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.large.value,
        fontWeight: SFDSFontWeight.strong.value,
        height: lineHeigth ? SFDSLineHeigth.medium.value : null,
        color: textColor,
      ),
      defaults: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.large.value,
        fontWeight: SFDSFontWeight.defaults.value,
        height: lineHeigth ? SFDSLineHeigth.medium.value : null,
        color: textColor,
      ),
      neutral: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.large.value,
        fontWeight: SFDSFontWeight.neutral.value,
        height: lineHeigth ? SFDSLineHeigth.medium.value : null,
        color: textColor,
      ),
      semiStrong: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.large.value,
        fontWeight: SFDSFontWeight.semiStrong.value,
        height: lineHeigth ? SFDSLineHeigth.medium.value : null,
        color: textColor,
      ),
      thin: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.large.value,
        fontWeight: SFDSFontWeight.thin.value,
        height: lineHeigth ? SFDSLineHeigth.medium.value : null,
        color: textColor,
      ),
    );
  }
  factory SFDSTextStyle.body1(
    BuildContext context, {
    Color? cor,
    double? fontSize,
    bool lineHeigth = false,
  }) {
    Color textColor = cor ?? corTexto(context);

    return SFDSTextStyle._(
      strong: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.medium.value,
        fontWeight: SFDSFontWeight.strong.value,
        height: lineHeigth ? SFDSLineHeigth.small.value : null,
        color: textColor,
      ),
      defaults: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.medium.value,
        fontWeight: SFDSFontWeight.defaults.value,
        height: lineHeigth ? SFDSLineHeigth.small.value : null,
        color: textColor,
      ),
      neutral: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.medium.value,
        fontWeight: SFDSFontWeight.neutral.value,
        height: lineHeigth ? SFDSLineHeigth.small.value : null,
        color: textColor,
      ),
      semiStrong: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.medium.value,
        fontWeight: SFDSFontWeight.semiStrong.value,
        height: lineHeigth ? SFDSLineHeigth.small.value : null,
        color: textColor,
      ),
      thin: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.medium.value,
        fontWeight: SFDSFontWeight.thin.value,
        height: lineHeigth ? SFDSLineHeigth.small.value : null,
        color: textColor,
      ),
    );
  }
  factory SFDSTextStyle.body2(
    BuildContext context, {
    Color? cor,
    double? fontSize,
    bool lineHeigth = false,
  }) {
    Color textColor = cor ?? corTexto(context);

    return SFDSTextStyle._(
      strong: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.medium.value,
        fontWeight: SFDSFontWeight.strong.value,
        height: lineHeigth ? SFDSLineHeigth.xsmall.value : null,
        color: textColor,
      ),
      defaults: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.medium.value,
        fontWeight: SFDSFontWeight.defaults.value,
        height: lineHeigth ? SFDSLineHeigth.xsmall.value : null,
        color: textColor,
      ),
      neutral: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.medium.value,
        fontWeight: SFDSFontWeight.neutral.value,
        height: lineHeigth ? SFDSLineHeigth.xsmall.value : null,
        color: textColor,
      ),
      semiStrong: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.medium.value,
        fontWeight: SFDSFontWeight.semiStrong.value,
        height: lineHeigth ? SFDSLineHeigth.xsmall.value : null,
        color: textColor,
      ),
      thin: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.medium.value,
        fontWeight: SFDSFontWeight.thin.value,
        height: lineHeigth ? SFDSLineHeigth.xsmall.value : null,
        color: textColor,
      ),
    );
  }
  factory SFDSTextStyle.body3(
    BuildContext context, {
    Color? cor,
    bool lineHeigth = false,
    double? fontSize,
  }) {
    Color textColor = cor ?? corTexto(context);
    return SFDSTextStyle._(
      strong: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.small.value,
        fontWeight: SFDSFontWeight.strong.value,
        height: lineHeigth ? SFDSLineHeigth.xsmall.value : null,
        color: textColor,
      ),
      defaults: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.small.value,
        fontWeight: SFDSFontWeight.defaults.value,
        height: lineHeigth ? SFDSLineHeigth.xsmall.value : null,
        color: textColor,
      ),
      neutral: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.small.value,
        fontWeight: SFDSFontWeight.neutral.value,
        height: lineHeigth ? SFDSLineHeigth.xsmall.value : null,
        color: textColor,
      ),
      semiStrong: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.small.value,
        fontWeight: SFDSFontWeight.semiStrong.value,
        height: lineHeigth ? SFDSLineHeigth.xsmall.value : null,
        color: textColor,
      ),
      thin: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.small.value,
        fontWeight: SFDSFontWeight.thin.value,
        height: lineHeigth ? SFDSLineHeigth.xsmall.value : null,
        color: textColor,
      ),
    );
  }
  factory SFDSTextStyle.caption1(
    BuildContext context, {
    Color? cor,
    double? fontSize,
    bool lineHeigth = false,
  }) {
    Color textColor = cor ?? corTexto(context);

    return SFDSTextStyle._(
      strong: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.xsmall.value,
        fontWeight: SFDSFontWeight.strong.value,
        height: lineHeigth ? SFDSLineHeigth.xxsmall.value : null,
        color: textColor,
      ),
      defaults: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.xsmall.value,
        fontWeight: SFDSFontWeight.defaults.value,
        height: lineHeigth ? SFDSLineHeigth.xxsmall.value : null,
        color: textColor,
      ),
      neutral: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.xsmall.value,
        fontWeight: SFDSFontWeight.neutral.value,
        height: lineHeigth ? SFDSLineHeigth.xxsmall.value : null,
        color: textColor,
      ),
      semiStrong: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.xsmall.value,
        fontWeight: SFDSFontWeight.semiStrong.value,
        height: lineHeigth ? SFDSLineHeigth.xxsmall.value : null,
        color: textColor,
      ),
      thin: TextStyle(
        package: SFDSStrings.package,
        fontFamily: SFDSStrings.fontFamily,
        fontSize: fontSize ?? SFDSFontSize.xsmall.value,
        fontWeight: SFDSFontWeight.thin.value,
        height: lineHeigth ? SFDSLineHeigth.xxsmall.value : null,
        color: textColor,
      ),
    );
  }

  static Color corTexto(BuildContext context) {
    if (MediaQuery.of(context).platformBrightness == Brightness.dark) {
      return SFDSColors.neutralWhite;
    }
    return SFDSColors.neutralBlack;
  }
}
