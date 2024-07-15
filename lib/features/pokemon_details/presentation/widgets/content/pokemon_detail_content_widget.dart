import 'package:cf_poke_hatameku/features/pokemon_details/data/pokemon_stats_model.dart';
import 'package:cf_poke_hatameku/features/pokemon_details/presentation/widgets/content/pokemon_detail_base_stats_widget.dart';
import 'package:cf_poke_hatameku/features/pokemon_details/presentation/widgets/content/pokemon_detail_description_widget.dart';
import 'package:cf_poke_hatameku/features/pokemon_details/presentation/widgets/content/pokemon_detail_traits_widget.dart';
import 'package:cf_poke_hatameku/features/pokemon_details/presentation/widgets/content/pokemon_detail_type_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PokemonDetailContentWidget extends StatelessWidget {
  final Widget detailImage;

  const PokemonDetailContentWidget({
    required this.detailImage,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        detailImage,
        const SizedBox(
          height: 4,
        ),
        const PokemonTypeWidget(),
        const SizedBox(
          height: 16,
        ),
        const PokemonDetailTraitsWidget(
          title: 'About',
          weight: 6.9,
          height: 0.7,
          moves: [
            'Chlorophyll',
            'Overgrow',
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        const PokemonDetailDescriptionWidget(
          text: 'There is a plant seed on its back right from the '
              'day this Pokémon is born. The seed slowly grows '
              'larger.',
        ),
        const SizedBox(
          height: 16,
        ),
        const PokemonDetailBaseStatsWidget(
          stats: PokemonStats(
            hp: 45,
            atk: 49,
            def: 49,
            satk: 65,
            sdef: 65,
            spd: 45,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
