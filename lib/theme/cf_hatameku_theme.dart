import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData cfHatamekuTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  textTheme: TextTheme(
    headlineLarge: GoogleFonts.poppins(
      textStyle: const TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal,
        color: Colors.white,
      ),
    ),
    headlineSmall: GoogleFonts.poppins(
      textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal,
        color: Colors.white,
      ),
    ),
    titleLarge: GoogleFonts.poppins(
      textStyle: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: Color(0xFF74CB48),
      ),
    ),
    titleMedium: GoogleFonts.poppins(
      textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: Color(0xFF74CB48),
      ),
    ),
  ),
);

extension BuildContextExt on BuildContext {
  /// Usage example: `context.theme`
  ThemeData get theme => Theme.of(this);

  /// Usage example: `context.size`
  Size get screenSize => MediaQuery.of(this).size;
}
