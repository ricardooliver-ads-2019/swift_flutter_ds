import 'package:flutter/material.dart';
import 'package:swift_flutter_ds/src/border/borders_export.dart';
import 'package:swift_flutter_ds/src/buttons/sf_ds_button_swift_type_enum.dart';
import 'package:swift_flutter_ds/src/color/sf_ds_color.dart';
import 'package:swift_flutter_ds/src/fontStyle/sf_ds_text_style.dart';
import 'package:swift_flutter_ds/src/spacing/sf_ds_spacing.dart';

import '../spacing/sf_ds_sized_box_spacing.dart';

class SFDSButtonSwift extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final ButtonSwiftType type;
  final bool isBorder;
  final bool isBackground;
  final bool isLoading;
  final bool isDisabled;
  final Widget? iconLeft;
  final Widget? iconRight;
  final TextAlign textAlign;
  final double width; // Largura personalizada
  final double height; // Altura personalizada

  const SFDSButtonSwift({
    super.key,
    required this.text,
    required this.onPressed,
    this.type = ButtonSwiftType.primary,
    this.isBorder = false,
    this.isBackground = true,
    this.isLoading = false,
    this.isDisabled = false,
    this.iconLeft,
    this.iconRight,
    this.textAlign = TextAlign.center,
    this.width = 155, // Largura opcional
    this.height = 48, // Altura opcional
  });

  @override
  Widget build(BuildContext context) {
    // Determinando cores e estilos baseados no tipo de botão
    bool isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    Color backgroundColor;
    Color textColor;
    Color borderColor;

    switch (type) {
      case ButtonSwiftType.primary:
        backgroundColor =
            isBackground ? SFDSColors.primary : SFDSColors.transparent;
        textColor = isBackground ? SFDSColors.neutralWhite : SFDSColors.primary;
        borderColor = isDark ? SFDSColors.neutralWhite : SFDSColors.primary;
        break;
      case ButtonSwiftType.secundary:
        backgroundColor =
            isBackground ? SFDSColors.secundary : SFDSColors.transparent;
        textColor =
            isBackground ? SFDSColors.neutralBlack : SFDSColors.secundary;
        borderColor = SFDSColors.secundary;
        break;
      case ButtonSwiftType.terciary:
        backgroundColor =
            isBackground ? SFDSColors.terciary : Colors.transparent;
        textColor =
            isBackground ? SFDSColors.neutralBlack : SFDSColors.terciary;
        borderColor = SFDSColors.terciary;
        break;
      case ButtonSwiftType.cancel:
        backgroundColor =
            isBackground ? SFDSColors.alertError : Colors.transparent;
        textColor =
            isBackground ? SFDSColors.neutralWhite : SFDSColors.alertError;
        borderColor = SFDSColors.alertError;
        break;
    }

    // Ajustando o estilo se o botão estiver desabilitado
    if (isDisabled) {
      backgroundColor = SFDSColors.buttonDisabledSolidDefaultBackground;
      textColor = SFDSColors.textButtonDisabledSolidDefault;
      borderColor = SFDSColors.disabled;
    }

    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: (isDisabled || isLoading) ? null : onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: textColor,
          backgroundColor: backgroundColor,
          disabledBackgroundColor: backgroundColor,
          side: isBorder
              ? BorderSide(
                  color: borderColor, width: SFDSBorderWidth.thin.value)
              : BorderSide.none,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(SFDSBorderRadius.defaults.value),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: SFDSSpacing.micro.value,
            vertical: SFDSSpacing.mini.value,
          ),
        ),
        child: isLoading
            ? CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(SFDSColors.secundary),
                strokeWidth: 2.5,
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (iconLeft != null)
                    SizedBox(
                      width: SFDSSpacing.xxbodied.value,
                      height: SFDSSpacing.xxbodied.value,
                      child: iconLeft!,
                    ),
                  if (iconLeft != null)
                    SFDSSizedBoxSpacing.sizedBoxHorizontal(
                        SFDSSpacing.micro.value),
                  Expanded(
                    child: Text(
                      text,
                      textAlign: textAlign,
                      style: SFDSTextStyle.body1(
                        context,
                        cor: textColor,
                      ).defaults,
                    ),
                  ),
                  if (iconRight != null)
                    SFDSSizedBoxSpacing.sizedBoxHorizontal(
                        SFDSSpacing.micro.value),
                  if (iconRight != null)
                    SizedBox(
                      width: SFDSSpacing.xxbodied.value,
                      height: SFDSSpacing.xxbodied.value,
                      child: iconRight!,
                    ),
                ],
              ),
      ),
    );
  }
}
