import 'package:flutter/material.dart';

import '../resources/colors.dart';
import '../resources/fonts.gen.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final int? maxLines;

  const AppText._(
    this.text, {
    required this.textStyle,
    required this.overflow,
    this.textAlign,
    this.maxLines,
    Key? key,
  }) : super(key: key);

  factory AppText.headline3(
      String text, {
        Color? color,
        TextOverflow? overflow,
      }) =>
      AppText._(
        text,
        textStyle: TextStyle(
          fontSize: 48,
          color: color ?? AppColor.black,
          fontWeight: FontWeight.w700,
          fontFamily: FontFamily.speedee,
        ),
        overflow: overflow,
      );

  factory AppText.headline4(
    String text, {
    Color? color,
    TextOverflow? overflow,
  }) =>
      AppText._(
        text,
        textStyle: TextStyle(
          fontSize: 34,
          color: color ?? AppColor.black,
          fontWeight: FontWeight.w600,
          fontFamily: FontFamily.speedee,
        ),
        overflow: overflow,
      );

  factory AppText.headline5(
    String text, {
    Color? color,
    TextOverflow? overflow,
  }) =>
      AppText._(
        text,
        textStyle: TextStyle(
          fontSize: 24,
          color: color ?? AppColor.black,
          fontWeight: FontWeight.w400,
          fontFamily: FontFamily.speedee,
        ),
        overflow: overflow,
      );

  factory AppText.subTitle1(
    String text, {
    Color? color,
    TextOverflow? overflow,
  }) =>
      AppText._(
        text,
        textStyle: TextStyle(
          fontSize: 16,
          color: color ?? AppColor.black,
          fontWeight: FontWeight.w400,
          fontFamily: FontFamily.speedee,
        ),
        overflow: overflow,
      );

  factory AppText.buttonText(
    String text, {
    Color? color,
    double? height,
    double? fontSize,
    TextOverflow? overflow,
  }) =>
      AppText._(
        text,
        textStyle: TextStyle(
          color: color ?? AppColor.black,
          height: height,
          fontSize: fontSize ?? 16,
          fontWeight: FontWeight.w700,
          fontFamily: FontFamily.speedee,
        ),
        overflow: overflow,
      );

  factory AppText.customText(
    String text, {
    Color? color,
    double? height,
    int? maxLines,
    double? fontSize,
    FontWeight? fontWeight,
    String? fontFamily,
    TextOverflow? overflow,
    TextAlign? textAlign,
  }) =>
      AppText._(
        text,
        textStyle: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontFamily: FontFamily.speedee,
          height: height,
        ),
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
      );

  factory AppText.subText(
    String text, {
    TextOverflow? overflow,
    Color? color,
    TextAlign? textAlign,
  }) =>
      AppText._(
        text,
        textStyle: TextStyle(
          fontSize: 14,
          color: color ?? AppColor.hintText,
          fontFamily: FontFamily.speedee,
        ),
        overflow: overflow,
        textAlign: textAlign,
      );

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign ?? TextAlign.left,
    );
  }
}
