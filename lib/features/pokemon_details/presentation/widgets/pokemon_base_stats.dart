import 'package:cf_poke_hatameku/theme/cf_hatameku_theme.dart';
import 'package:flutter/material.dart';

class PokemonBaseStats extends StatelessWidget {
  final int hp;
  final int atk;
  final int def;
  final int satk;
  final int sdef;
  final int spd;

  const PokemonBaseStats({
    required this.hp,
    required this.atk,
    required this.def,
    required this.satk,
    required this.sdef,
    required this.spd,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Text(
            style: context.theme.textTheme.titleMedium,
            'Base Stats',
          ),
        ],
      ),
    );
  }
}
