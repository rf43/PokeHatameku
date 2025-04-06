import 'dart:math';

import 'package:cf_poke_hatameku/constants/pokemon_types.dart';
import 'package:cf_poke_hatameku/features/pokemon_details/data/pokemon_model.dart';
import 'package:cf_poke_hatameku/features/pokemon_details/presentation/screen/pokemon_detail_screen.dart';
import 'package:cf_poke_hatameku/gen/assets.gen.dart';
import 'package:cf_poke_hatameku/theme/cf_hatameku_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(PokeHatamekuApp());
}

class PokeHatamekuApp extends StatelessWidget {
  PokeHatamekuApp({super.key});

  final _mockPokemon = PokemonModel(
    id: 1,
    types: [const GrassType(), const PoisonType()],
    name: 'Bulbasaur',
    imageUri: Assets.images.bulbasaur.path,
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
      // home: ClippingApp(),
      home: PokemonDetailScreen(
        model: _mockPokemon,
      ),
    );
  }
}

class ClippingApp extends StatelessWidget {
  const ClippingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ClipPath(
        clipper: CurvedBottomClipper(),
        child: Container(
          color: Colors.lightGreen,
          height: 250.0,
          child: const Center(
            child: Padding(
              padding: EdgeInsets.only(bottom: 50),
              child: Text(
                'Curved View',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CurvedBottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // I've taken approximate height of curved part of view
    // Change it if you have exact spec for it
    var roundingHeight = size.height * 3 / 5;

    // this is top part of path, rectangle without any rounding
    var filledRectangle =
        Rect.fromLTRB(0, 0, size.width, size.height - roundingHeight);

    // this is rectangle that will be used to draw arc
    // arc is drawn from center of this rectangle, so it's height has to be twice roundingHeight
    // also I made it to go 5 units out of screen on left and right, so curve will have some incline there
    var roundingRectangle = Rect.fromLTRB(
      -5,
      size.height - roundingHeight * 2,
      size.width + 5,
      size.height,
    );

    var path = Path();
    path.addRect(filledRectangle);

    // so as I wrote before: arc is drawn from center of roundingRectangle
    // 2nd and 3rd arguments are angles from center to arc start and end points
    // 4th argument is set to true to move path to rectangle center, so we don't have to move it manually
    path.arcTo(roundingRectangle, pi, -pi, true);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // returning fixed 'true' value here for simplicity, it's not the part of actual question, please read docs if you want to dig into it
    // basically that means that clipping will be redrawn on any changes
    return true;
  }
}
