import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  static TextStyle title(double size, [Color color = Colors.white]) =>
      GoogleFonts.montserrat(fontSize: size, fontWeight: FontWeight.bold, color: color);

  static TextStyle subtitle(double size, [Color color = Colors.grey]) =>
      GoogleFonts.montserrat(fontSize: size, fontWeight: FontWeight.w500, color: color);
}
