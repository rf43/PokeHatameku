import 'package:cf_poke_hatameku/features/pokemon_details/presentation/screen/pokemon_detail_screen.dart';
import 'package:cf_poke_hatameku/theme/cf_hatameku_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const PokeHatamekuApp());
}

class PokeHatamekuApp extends StatelessWidget {
  const PokeHatamekuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PokeHatameku',
      theme: cfHatamekuTheme,
      home: const PokemonDetailScreen(),
    );
  }
}
