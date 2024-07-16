import 'package:cf_poke_hatameku/constants/pokemon_types.dart';

class PokemonModel {
  final int id;
  final List<PokemonType> types;
  final String name;
  final String imageUri;
  final String description;
  final double height;
  final double weight;
  final List<String> moves;

  const PokemonModel({
    required this.id,
    required this.types,
    required this.name,
    required this.imageUri,
    required this.description,
    required this.height,
    required this.weight,
    required this.moves,
  });
}
