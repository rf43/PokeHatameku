import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:cf_poke_hatameku/constants/pokemon_types.dart';

class PokemonTypeWidget extends StatelessWidget {
  final List<PokemonType> types;

  const PokemonTypeWidget({required this.types, super.key});

  List<Widget> _getWidgets(BuildContext context, List<PokemonType> types) {
    var items = <Widget>[];

    for (var i = 0; i < types.length; i++) {
      items.add(
        _PokemonDetailTypeChipWidget(
          title: types[i].name,
          color: types[i].getColor(context),
        ),
      );

      if (i < types.length - 1) {
        items.add(const SizedBox(width: 16));
      }
    }

    return items;
  }

  @override
  Widget build(BuildContext context) {
    var w = _getWidgets(context, types);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: _getWidgets(context, types),
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
