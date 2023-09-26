import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class W {
  static textBody(
    String text, {
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    TextOverflow? overflow,
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
    );
  }
}
