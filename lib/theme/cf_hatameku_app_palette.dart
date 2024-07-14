import 'dart:ui';

abstract class CfHatamekuAppPalette {
  static const pokemonTypeColor = _PokemonTypeColors();
}

class _PokemonTypeColors {
  const _PokemonTypeColors();

  final Color grass = const Color(0xFF74CB48);
  final Color poison = const Color(0xFFA43E9E);
}
