import 'package:cf_poke_hatameku/theme/cf_hatameku_theme_ext_colors.dart';
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
    titleSmall: GoogleFonts.poppins(
      textStyle: const TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w700,
        color: Color(0xFF74CB48),
      ),
    ),
  ),
).copyWith(
  extensions: <ThemeExtension<dynamic>>[
    const CfHatamekuColors(),
  ],
);

/// Extension function for [BuildContext] so that
/// we can avoid having to type things like
///
/// ```dart
/// MediaQuery.sizeOf(context).something
/// ```
extension BuildContextExt on BuildContext {
  /// Usage example: `context.theme`
  ThemeData get theme => Theme.of(this);

  /// Convenience getter for the screen size
  ///
  /// Usage example
  /// ```dart
  /// Container(
  ///   width: context.screenSize.width,
  ///   height: context.screenSize.height,
  /// )
  /// ```
  Size get screenSize => MediaQuery.sizeOf(this);

  /// Custom app colors
  ///
  /// Usage example
  /// ```dart
  /// Container(
  ///   color: context.hatamekuColors.poison
  /// )
  /// ```
  CfHatamekuColors get hatamekuColors =>
      Theme.of(this).extension<CfHatamekuColors>()!;
}
