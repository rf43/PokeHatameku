import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class PokemonDetailDescriptionWidget extends StatelessWidget {
  final String text;

  const PokemonDetailDescriptionWidget({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Text(
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontSize: 10,
              height: 1.75,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
          text,
        ),
      ),
    );
  }
}
