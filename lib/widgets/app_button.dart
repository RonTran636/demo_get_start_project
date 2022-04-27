import 'package:flutter/material.dart';

import '../resources/colors.dart';
import 'app_text.dart';

class AppButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final Color textColor, backgroundColor;
  final Color? borderColor;
  final EdgeInsets? padding;
  final double? borderRadius;
  final double? borderWidth;
  final FontWeight? fontWeight;
  final double? fontSize;

  // Constructor
  const AppButton._({
    Key? key,
    this.onPressed,
    required this.backgroundColor,
    required this.textColor,
    required this.text,
    this.borderColor,
    this.padding,
    this.borderRadius,
    this.borderWidth,
    this.fontWeight,
    this.fontSize,
  }) : super(key: key);

  factory AppButton.disabled(
    String text, {
    bool tiny = false,
    Key? key,
  }) {
    return AppButton._(
      key: key,
      text: text,
      textColor: AppColor.white,
      backgroundColor: AppColor.disabledButtonBackgroundGrey,
      padding: tiny
          ? const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 8,
            )
          : null,
    );
  }

//
//   factory AppButton.danger(
//     String text, {
//     VoidCallback? onPressed,
//     FontWeight? fontWeight,
//     double? fontSize,
//     Key? key,
//   }) {
//     if (onPressed == null) return AppButton.disabled(text);
//     return AppButton(
//       key: key,
//       text: text,
//       onPressed: onPressed,
//       textColor: _Colors.whiteText,
//       backgroundColor: _Colors.primaryRed,
//       fontWeight: fontWeight,
//       fontSize: fontSize,
//     );
//   }
//
//   factory AppButton.primaryDark(
//     String text, {
//     EdgeInsets? padding,
//     double? fontSize,
//     FontWeight? fontWeight,
//     VoidCallback? onPressed,
//     Key? key,
//   }) {
//     if (onPressed == null) return AppButton.disabled(text);
//     return AppButton(
//       key: key,
//       text: text,
//       onPressed: onPressed,
//       textColor: _Colors.whiteText,
//       backgroundColor: _Colors.primaryDarkBlue,
//       fontSize: fontSize,
//       fontWeight: fontWeight,
//       padding: padding,
//     );
//   }
//
//   factory AppButton.primaryLightBlue(
//     String text, {
//     VoidCallback? onPressed,
//     Key? key,
//   }) {
//     if (onPressed == null) return AppButton.disabled(text);
//     return AppButton(
//       key: key,
//       text: text,
//       onPressed: onPressed,
//       textColor: _Colors.darkBlueText,
//       backgroundColor: _Colors.primaryLightBlue,
//       borderColor: const Color(0xFF405569),
//       borderWidth: 0.5,
//     );
//   }
//
//   factory AppButton.primary(
//     String text, {
//     VoidCallback? onPressed,
//     Key? key,
//     FontWeight? fontWeight,
//   }) {
//     if (onPressed == null) return AppButton.disabled(text);
//     return AppButton(
//       key: key,
//       text: text,
//       onPressed: onPressed,
//       textColor: _Colors.whiteText,
//       backgroundColor: _Colors.primaryBlue,
//       fontWeight: fontWeight,
//     );
//   }
//
//   factory AppButton.success(
//     String text, {
//     VoidCallback? onPressed,
//     Key? key,
//   }) {
//     if (onPressed == null) return AppButton.disabled(text);
//     return AppButton(
//       key: key,
//       text: text,
//       onPressed: onPressed,
//       textColor: _Colors.whiteText,
//       backgroundColor: _Colors.primaryGreen,
//     );
//   }
//
//   factory AppButton.secondary(
//     String text, {
//     VoidCallback? onPressed,
//     Key? key,
//     FontWeight? fontWeight,
//   }) {
//     if (onPressed == null) return AppButton.disabled(text);
//     return AppButton(
//       key: key,
//       text: text,
//       onPressed: onPressed,
//       textColor: _Colors.secondaryGreyText,
//       backgroundColor: Colors.transparent,
//       borderColor: _Colors.secondaryGreyBorder,
//       fontWeight: fontWeight,
//     );
//   }
//
  factory AppButton.primary(
    String text, {
    required VoidCallback? onPressed,
    EdgeInsets? padding,
    FontWeight? fontWeight,
    double? fontSize,
    Key? key,
  }) {
    if (onPressed == null) return AppButton.disabled(text);
    return AppButton._(
      key: key,
      text: text,
      onPressed: onPressed,
      textColor: AppColor.black,
      backgroundColor: AppColor.loginButtonColor,
      fontWeight: fontWeight ?? FontWeight.w600,
      fontSize: fontSize ?? 18,
      padding: padding ?? const EdgeInsets.symmetric(vertical: 12),
    );
  }

  factory AppButton.primaryDark(
    String text, {
    required VoidCallback? onPressed,
    EdgeInsets? padding,
    FontWeight? fontWeight,
    double? fontSize,
    Key? key,
  }) {
    if (onPressed == null) return AppButton.disabled(text);
    return AppButton._(
      key: key,
      text: text,
      onPressed: onPressed,
      textColor: AppColor.white,
      backgroundColor: AppColor.black,
      fontWeight: fontWeight,
      fontSize: fontSize,
      padding: padding ?? const EdgeInsets.symmetric(vertical: 12),
    );
  }

  factory AppButton.custom(
    String text, {
    required VoidCallback? onPressed,
    EdgeInsets? padding,
    FontWeight? fontWeight,
    double? fontSize,
    double? borderRadius,
    Color? backgroundColor,
    Color? textColor,
    Key? key,
  }) =>
      AppButton._(
        key: key,
        text: text,
        onPressed: onPressed,
        textColor: textColor ?? AppColor.white,
        backgroundColor: backgroundColor ?? AppColor.black,
        fontWeight: fontWeight,
        fontSize: fontSize,
        borderRadius: borderRadius,
        padding: padding ?? const EdgeInsets.symmetric(vertical: 12),
      );

  // UI
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(backgroundColor),
        padding: MaterialStateProperty.all(
          padding ?? const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
          ),
        ),
      ),
      child: AppText.customText(
        text,
        fontWeight: fontWeight,
        fontSize: fontSize ?? 16,
        color: textColor,
      ),
    );
  }
}
