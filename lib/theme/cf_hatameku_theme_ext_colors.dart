import 'package:flutter/material.dart';

class CfHatamekuColors extends ThemeExtension<CfHatamekuColors> {
  final Color? grass;
  final Color? poison;

  const CfHatamekuColors({
    this.grass = const Color(0xFF74CB48),
    this.poison = const Color(0xFFA43E9E),
  });

  @override
  ThemeExtension<CfHatamekuColors> copyWith({
    Color? grass,
    Color? poison,
  }) {
    return CfHatamekuColors(
      grass: grass ?? this.grass,
      poison: poison ?? this.poison,
    );
  }

  @override
  CfHatamekuColors lerp(CfHatamekuColors? other, double t) {
    if (other is! CfHatamekuColors) {
      return this;
    }

    return CfHatamekuColors(
      grass: Color.lerp(grass, other.grass, t),
      poison: Color.lerp(poison, other.poison, t),
    );
  }
}
