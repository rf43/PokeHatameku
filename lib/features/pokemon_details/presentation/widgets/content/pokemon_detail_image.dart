import 'package:flutter/material.dart';

class PokemonDetailImage extends StatelessWidget {
  final double width;
  final double height;
  final String imagePath;

  const PokemonDetailImage({
    required this.imagePath,
    required this.width,
    required this.height,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Image.asset(
        imagePath,
        fit: BoxFit.contain,
        height: height,
        width: width,
      ),
    );
  }
}
