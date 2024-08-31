import 'package:flutter/material.dart';
import 'package:swift_flutter_ds/src/buttons/sf_ds_button_swift_type_enum.dart';
import 'package:swift_flutter_ds/src/color/sf_ds_color.dart';
import 'package:swift_flutter_ds/src/fontStyle/sf_ds_text_style.dart';
import 'package:swift_flutter_ds/src/spacing/sf_ds_spacing.dart';

import '../spacing/sf_ds_sized_box_spacing.dart';

class SFDSButtonSwift extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final ButtonSwiftType type;
  final bool withBorder;
  final bool withBackground;
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
    this.withBorder = false,
    this.withBackground = true,
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
    Color backgroundColor;
    Color textColor;
    Color borderColor;

    switch (type) {
      case ButtonSwiftType.primary:
        backgroundColor =
            withBackground ? SFDSColors.primary : Colors.transparent;
        textColor = withBackground ? Colors.white : SFDSColors.primary;
        borderColor = SFDSColors.primary;
        break;
      case ButtonSwiftType.secundary:
        backgroundColor =
            withBackground ? SFDSColors.secundary : Colors.transparent;
        textColor = withBackground ? Colors.black : SFDSColors.secundary;
        borderColor = SFDSColors.secundary;
        break;
      case ButtonSwiftType.terciary:
        backgroundColor =
            withBackground ? SFDSColors.terciary : Colors.transparent;
        textColor = withBackground ? Colors.black : SFDSColors.terciary;
        borderColor = SFDSColors.terciary;
        break;
      case ButtonSwiftType.cancel:
        backgroundColor =
            withBackground ? SFDSColors.alertError : Colors.transparent;
        textColor = withBackground ? Colors.white : SFDSColors.alertError;
        borderColor = SFDSColors.alertError;
        break;
    }

    // Ajustando o estilo se o botão estiver desabilitado
    if (isDisabled) {
      backgroundColor = SFDSColors.buttonDisabledSolidDefaultBackground;
      textColor = SFDSColors.textButtonDisabledSolidDefault;
      borderColor = SFDSColors.disabled;
    }

    return ElevatedButton(
      onPressed: isDisabled ? null : onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: textColor,
        backgroundColor: backgroundColor,
        side: withBorder
            ? BorderSide(color: borderColor, width: 2.0)
            : BorderSide.none,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      ),
      child: isLoading
          ? CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(textColor),
              strokeWidth: 2.0,
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (iconLeft != null)
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: iconLeft!,
                  ),
                if (iconLeft != null)
                  SFDSSizedBoxSpacing.sizedBoxHorizontal(
                      SFDSSpacing.micro.valor),
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
                      SFDSSpacing.micro.valor),
                if (iconRight != null)
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: iconRight!,
                  ),
              ],
            ),
    );
  }
}
