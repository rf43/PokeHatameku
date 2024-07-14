import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PokemonTypeChip extends StatelessWidget {
  final String title;
  final Color color;

  const PokemonTypeChip({required this.title, required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.only(
          left: 12.0,
          right: 12.0,
          top: 4.0,
          bottom: 4.0,
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: color,
        ),
        child: Text(
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          title,
        ),
      ),
    );
  }
}
