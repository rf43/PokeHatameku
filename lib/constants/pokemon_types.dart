import 'package:cf_poke_hatameku/theme/cf_hatameku_theme.dart';
import 'package:flutter/material.dart';

// enum PokemonTypes {
//   bug,
//   dark,
//   dragon,
//   electric,
//   fairy,
//   fighting,
//   fire,
//   flying,
//   ghost,
//   normal,
//   grass,
//   ground,
//   ice,
//   poison,
//   psychic,
//   rock,
//   steel,
//   water,
// }

sealed class PokemonType {
  final String name;

  const PokemonType({required this.name});

  Color? getColor(BuildContext context);
}

class BugType extends PokemonType {
  const BugType({super.name = 'Bug'});

  @override
  Color? getColor(BuildContext context) {
    return context.pokemonTypeColors.bug;
  }
}

class GrassType extends PokemonType {
  const GrassType({super.name = 'Grass'});

  @override
  Color? getColor(BuildContext context) {
    return context.pokemonTypeColors.grass;
  }
}

class PoisonType extends PokemonType {
  const PoisonType({super.name = 'Poison'});

  @override
  Color? getColor(BuildContext context) {
    return context.pokemonTypeColors.poison;
  }
}
