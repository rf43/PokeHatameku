import 'package:flutter/material.dart';

class PokemonTypeColors extends ThemeExtension<PokemonTypeColors> {
  final Color? bug;
  final Color? dark;
  final Color? dragon;
  final Color? electric;
  final Color? fairy;
  final Color? fighting;
  final Color? fire;
  final Color? flying;
  final Color? ghost;
  final Color? normal;
  final Color? grass;
  final Color? ground;
  final Color? ice;
  final Color? poison;
  final Color? psychic;
  final Color? rock;
  final Color? steel;
  final Color? water;

  const PokemonTypeColors({
    this.bug = const Color(0xFFA7B723),
    this.dark = const Color(0xFF75574C),
    this.dragon = const Color(0xFF7037FF),
    this.electric = const Color(0xFFF9CF30),
    this.fairy = const Color(0xFFE69EAC),
    this.fighting = const Color(0xFFC12239),
    this.fire = const Color(0xFFF57D31),
    this.flying = const Color(0xFFA891EC),
    this.ghost = const Color(0xFF70559B),
    this.normal = const Color(0xFFAAA67F),
    this.grass = const Color(0xFF74CB48),
    this.ground = const Color(0xFFDEC16B),
    this.ice = const Color(0xFF9AD6DF),
    this.poison = const Color(0xFFA43E9E),
    this.psychic = const Color(0xFFFB5584),
    this.rock = const Color(0xFFB69E31),
    this.steel = const Color(0xFFB7B9D0),
    this.water = const Color(0xFF6493EB),
  });

  @override
  ThemeExtension<PokemonTypeColors> copyWith({
    Color? bug,
    Color? dark,
    Color? dragon,
    Color? electric,
    Color? fairy,
    Color? fighting,
    Color? fire,
    Color? flying,
    Color? normal,
    Color? grass,
    Color? ground,
    Color? ice,
    Color? poison,
    Color? psychic,
    Color? rock,
    Color? steel,
    Color? water,
  }) {
    return PokemonTypeColors(
      bug: bug ?? this.bug,
      dark: dark ?? this.dark,
      dragon: dragon ?? this.dragon,
      electric: electric ?? this.electric,
      fairy: fairy ?? this.fairy,
      fighting: fighting ?? this.fighting,
      fire: fire ?? this.fire,
      flying: flying ?? this.flying,
      normal: normal ?? this.normal,
      grass: grass ?? this.grass,
      ground: ground ?? this.ground,
      ice: ice ?? this.ice,
      poison: poison ?? this.poison,
      psychic: psychic ?? this.psychic,
      rock: rock ?? this.rock,
      steel: steel ?? this.steel,
      water: water ?? this.water,
    );
  }

  @override
  PokemonTypeColors lerp(PokemonTypeColors? other, double t) {
    if (other is! PokemonTypeColors) {
      return this;
    }

    return PokemonTypeColors(
      bug: Color.lerp(bug, other.bug, t),
      dark: Color.lerp(dark, other.dark, t),
      dragon: Color.lerp(dragon, other.dragon, t),
      electric: Color.lerp(electric, other.electric, t),
      fairy: Color.lerp(fairy, other.fairy, t),
      fighting: Color.lerp(fighting, other.fighting, t),
      fire: Color.lerp(fire, other.fire, t),
      flying: Color.lerp(flying, other.flying, t),
      normal: Color.lerp(normal, other.normal, t),
      grass: Color.lerp(grass, other.grass, t),
      ground: Color.lerp(ground, other.ground, t),
      ice: Color.lerp(ice, other.ice, t),
      poison: Color.lerp(poison, other.poison, t),
      psychic: Color.lerp(psychic, other.psychic, t),
      rock: Color.lerp(rock, other.rock, t),
      steel: Color.lerp(steel, other.steel, t),
      water: Color.lerp(water, other.water, t),
    );
  }
}
