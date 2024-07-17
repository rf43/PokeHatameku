import 'package:flutter/material.dart';

import 'package:cf_poke_hatameku/constants/pokemon_types.dart';
import 'package:cf_poke_hatameku/features/pokemon_details/data/pokemon_model.dart';
import 'package:cf_poke_hatameku/features/pokemon_details/presentation/screen/pokemon_detail_screen.dart';
import 'package:cf_poke_hatameku/theme/cf_hatameku_theme.dart';

void main() {
  runApp(const PokeHatamekuApp());
}

class PokeHatamekuApp extends StatelessWidget {
  const PokeHatamekuApp({super.key});

  final _mockPokemon = const PokemonModel(
    id: 1,
    types: [GrassType(), PoisonType()],
    name: 'Bulbasaur',
    imageUri: 'assets/images/bulbasaur.png',
    description: 'There is a plant seed on its back right from the '
        'day this Pokémon is born. The seed slowly grows '
        'larger.',
    height: 0.7,
    weight: 6.9,
    moves: [
      'Chlorophyll',
      'Overgrow',
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PokeHatameku',
      theme: cfHatamekuTheme,
      home: PokemonDetailScreen(
        model: _mockPokemon,
      ),
    );
  }
}
