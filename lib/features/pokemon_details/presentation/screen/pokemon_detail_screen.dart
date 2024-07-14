import 'package:cf_poke_hatameku/features/pokemon_details/presentation/widgets/pokemon_base_stats.dart';
import 'package:cf_poke_hatameku/features/pokemon_details/presentation/widgets/pokemon_desc_box.dart';
import 'package:cf_poke_hatameku/features/pokemon_details/presentation/widgets/pokemon_traits_row.dart';
import 'package:cf_poke_hatameku/features/pokemon_details/presentation/widgets/pokemon_type_chip.dart';
import 'package:cf_poke_hatameku/theme/cf_hatameku_app_palette.dart';
import 'package:cf_poke_hatameku/theme/cf_hatameku_theme.dart';
import 'package:flutter/material.dart';

class PokemonDetailScreen extends StatelessWidget {
  const PokemonDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          child: Container(
            color: CfHatamekuAppPalette.pokemonTypeColor.grass,
          ),
        ),
        Positioned(
          top: context.screenSize.height * 0.08,
          left: context.screenSize.width * 0.05,
          right: context.screenSize.width * 0.1,
          child: Row(
            children: [
              Material(
                color: CfHatamekuAppPalette.pokemonTypeColor.grass,
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.white12,
                  child: Ink.image(
                    fit: BoxFit.cover,
                    width: 32,
                    height: 32,
                    image: const AssetImage('assets/images/arrow_back.png'),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                style: context.theme.textTheme.headlineLarge,
                'Bulbasaur',
              ),
              const Spacer(),
              Text(
                style: context.theme.textTheme.headlineSmall,
                '#001',
              ),
            ],
          ),
        ),
        Positioned(
          top: context.screenSize.height * 0.02,
          right: context.screenSize.width * 0.02,
          child: Image.asset(
            'assets/images/pokeball-fill-light.png',
            fit: BoxFit.fill,
            height: context.screenSize.height * 0.3,
            width: context.screenSize.height * 0.3,
          ),
        ),
        Positioned.fill(
          top: context.screenSize.height * 0.35,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
              border: Border.all(
                color: Colors.black12,
                width: 2,
              ),
              color: Colors.white,
            ),
            padding: EdgeInsets.only(top: context.screenSize.height * 0.1),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PokemonTypeChip(
                      title: 'Grass',
                      color: CfHatamekuAppPalette.pokemonTypeColor.grass,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    PokemonTypeChip(
                      title: 'Poison',
                      color: CfHatamekuAppPalette.pokemonTypeColor.poison,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  style: context.theme.textTheme.titleMedium,
                  'About',
                ),
                const SizedBox(
                  height: 16,
                ),
                const PokemonTraitsRow(
                  weight: 6.9,
                  height: 0.7,
                  moves: [
                    'Chlorophyll',
                    'Overgrow',
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const PokemonDescBox(
                  text: 'There is a plant seed on its back right from the '
                      'day this Pokémon is born. The seed slowly grows '
                      'larger.',
                ),
                const SizedBox(
                  height: 16,
                ),
                const PokemonBaseStats(
                  hp: 45,
                  atk: 49,
                  def: 49,
                  satk: 65,
                  sdef: 65,
                  spd: 45,
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
          top: context.screenSize.height * 0.15,
          child: Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'assets/images/bulbasaur.png',
              fit: BoxFit.fill,
              height: context.screenSize.height * 0.3,
              width: context.screenSize.height * 0.3,
            ),
          ),
        ),
      ],
    );
  }
}
