import 'package:cf_poke_hatameku/theme/cf_hatameku_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PokemonTypeWidget extends StatelessWidget {
  const PokemonTypeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _PokemonDetailTypeChipWidget(
          title: 'Grass',
          color: context.hatamekuColors.grass,
        ),
        const SizedBox(
          width: 16,
        ),
        _PokemonDetailTypeChipWidget(
          title: 'Poison',
          color: context.hatamekuColors.poison,
        ),
      ],
    );
  }
}

class _PokemonDetailTypeChipWidget extends StatelessWidget {
  final String title;
  final Color? color;

  const _PokemonDetailTypeChipWidget({
    required this.title,
    required this.color,
  });

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
