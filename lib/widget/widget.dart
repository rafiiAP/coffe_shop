import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class W {
  /*-----------TEXT----------------*/
  static textBody(
    String text, {
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    TextOverflow? overflow,
    TextAlign? textAlign,
  }) {
    return Text(
      text,
      style: GoogleFonts.sora().copyWith(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        overflow: overflow,
      ),
      textAlign: textAlign,
    );
  }

  /*-----------INPUT------------------*/
  static input({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    Color? colorHint,
    double? fontSizeHint,
    FontWeight? fontWeightHint,
    FontStyle? fontStyleHint,
    TextOverflow? overflowHint,
    String? hintText,
    Widget? label,
    bool? filled,
    Color? fillColor,
    Widget? suffixIcon,
    Widget? prefixIcon,
  }) {
    return TextFormField(
      style: GoogleFonts.sora().copyWith(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
      ),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15),
        ),
        hintText: hintText,
        hintStyle: GoogleFonts.sora().copyWith(
          color: colorHint,
          fontSize: fontSizeHint,
          fontWeight: fontWeightHint,
          fontStyle: fontStyleHint,
          overflow: overflowHint,
        ),
        label: label,
        filled: filled,
        fillColor: fillColor,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
    );
  }

  /*-----------PADDING----------------*/
  static eleBtn({
    required Widget? child,
    required void Function()? onPressed,
    double? height,
    double? width,
    EdgeInsetsGeometry? padding,
  }) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: padding,
        ),
        child: child,
      ),
    );
  }

  /*-----------PADDING----------------*/
  static padHeight20() {
    return const SizedBox(height: 20);
  }

  static padHeight16() {
    return const SizedBox(height: 16);
  }

  static padHeight10() {
    return const SizedBox(height: 10);
  }

  static padHeight5() {
    return const SizedBox(height: 5);
  }

  static padwidth20() {
    return const SizedBox(width: 20);
  }

  static padwidth16() {
    return const SizedBox(width: 16);
  }

  static padwidth10() {
    return const SizedBox(width: 10);
  }

  static padwidth5() {
    return const SizedBox(width: 5);
  }
}
