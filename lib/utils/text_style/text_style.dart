import 'package:flutter/material.dart';

class TextFontStyle {
  static TextStyle lightFont({required Color color, required double size}) {
    return TextStyle(
        color: color, height: 1.2, fontWeight: FontWeight.w100, fontStyle: FontStyle.normal, fontSize: size);
  }

  static TextStyle light({required Color color, required double size}) {
    return TextStyle(color: color, fontWeight: FontWeight.w300, fontStyle: FontStyle.normal, fontSize: size);
  }

  static TextStyle regular({Color? color, required double size, double height = 1.4}) {
    return TextStyle(
        color: color, height: height, fontWeight: FontWeight.w400, fontStyle: FontStyle.normal, fontSize: size);
  }

  static TextStyle normal({Color? color, required double size}) {
    return TextStyle(
      color: color,
      height: 1.2,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      fontSize: size,
    );
  }

  static TextStyle semiBold({Color? color, required double size}) {
    return TextStyle(
        color: color, height: 1.2, fontWeight: FontWeight.w600, fontStyle: FontStyle.normal, fontSize: size);
  }

  static TextStyle bold({required Color color, required double size}) {
    return TextStyle(
        color: color, height: 1.2, fontWeight: FontWeight.w700, fontStyle: FontStyle.normal, fontSize: size);
  }

  static TextStyle highBold({required Color color, required double size}) {
    return TextStyle(
        color: color, height: 1.2, fontWeight: FontWeight.w800, fontStyle: FontStyle.normal, fontSize: size);
  }

  static TextStyle large({required Color color, required double size}) {
    return TextStyle(
        color: color, height: 1.2, fontWeight: FontWeight.w900, fontStyle: FontStyle.normal, fontSize: size);
  }

  static TextStyle heading({Color? color, required double size}) {
    return TextStyle(
        color: color,
        fontWeight: FontWeight.w800,
        fontFamily: "Gilroy",
        fontStyle: FontStyle.normal,
        fontSize: size);
  }
  static TextStyle hintText({Color? color, required double size, double? thickness}) {
    return TextStyle(
        color: color,
        fontWeight: FontWeight.w500,
        fontFamily: "Gotham",
        fontStyle: FontStyle.normal,

        fontSize: size);
  }
  static TextStyle gothamTextWithUnderline({Color? color, required double size, double? thickness}) {
    return TextStyle(
        color: color,
        fontWeight: FontWeight.w500,
        fontFamily: "Gotham",
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.underline,
        decorationThickness: thickness,
        fontSize: size);
  }

  static TextStyle gothamText({Color? color, required double size,}) {
    return TextStyle(
        color: color,
        fontWeight: FontWeight.w500,
        fontFamily: "Gotham",
        fontStyle: FontStyle.normal,
        fontSize: size);
  }

  static TextStyle montserrat({Color? color, required double size,}) {
    return TextStyle(
        color: color,
        fontWeight: FontWeight.w700,
        fontFamily: "Montserrat",
        fontStyle: FontStyle.normal,
        fontSize: size);
  }
  static TextStyle gothamW700({Color? color, required double size,}) {
    return TextStyle(
        color: color,
        fontWeight: FontWeight.w700,
        fontFamily: "Gotham",
        fontStyle: FontStyle.normal,
        fontSize: size);
  }
  static TextStyle buttonText({Color? color, required double size}) {
    return TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        fontFamily: "BrauerNeue",
        fontStyle: FontStyle.normal,

        fontSize: size);
  }


  static TextStyle subText({Color? color, required double size, double? thickness}) {
    return TextStyle(
        color: color,
        fontWeight: FontWeight.w500,
        fontFamily: "BrauerNeue",
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.underline,
        decorationThickness: thickness,
        fontSize: size);
  }
  static TextStyle brauerNeue700({Color? color, required double size}) {
    return TextStyle(
        color: color,
        fontWeight: FontWeight.w700,
        fontFamily: "BrauerNeue",
        fontStyle: FontStyle.normal,
        fontSize: size);
  }

  static TextStyle compactaText({Color? color, required double size, }) {
    return TextStyle(
        color: color,
        fontWeight: FontWeight.w500,
        fontFamily: "Compacta",
        fontStyle: FontStyle.normal,
        fontSize: size);
  }
}
