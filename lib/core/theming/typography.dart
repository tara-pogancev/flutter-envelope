import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography {
  late BuildContext context;

  TextStyle get h1 =>
      GoogleFonts.lora(fontSize: 54, height: 1, fontWeight: FontWeight.w500);
  TextStyle get h2 =>
      GoogleFonts.lora(fontSize: 40, height: 1, fontWeight: FontWeight.w400);
  TextStyle get h3 =>
      GoogleFonts.lora(fontSize: 32, height: 1, fontWeight: FontWeight.w400);
  TextStyle get h4 =>
      GoogleFonts.lora(fontSize: 24, height: 1, fontWeight: FontWeight.w400);
  TextStyle get h5 => GoogleFonts.lora(fontSize: 20, height: 1);
  TextStyle get h6 => GoogleFonts.lora(fontSize: 18, height: 1);

  TextStyle get bodyExtraLarge =>
      GoogleFonts.nunito(fontSize: 20, fontWeight: FontWeight.bold);
  TextStyle get bodyLarge =>
      GoogleFonts.nunito(fontSize: 16, fontWeight: FontWeight.bold);
  TextStyle get body => GoogleFonts.nunito(fontSize: 14);
  TextStyle get bodyBold =>
      GoogleFonts.nunito(fontSize: 14, fontWeight: FontWeight.bold);
  TextStyle get bodySmall => GoogleFonts.nunito(fontSize: 12);
  TextStyle get bodyExtraSmall => GoogleFonts.nunito(fontSize: 10);
}
