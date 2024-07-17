import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:cf_poke_hatameku/features/pokemon_details/data/pokemon_model.dart';
import 'package:cf_poke_hatameku/features/pokemon_details/data/pokemon_stats_model.dart';
import 'package:cf_poke_hatameku/features/pokemon_details/presentation/widgets/content/pokemon_detail_base_stats_widget.dart';
import 'package:cf_poke_hatameku/features/pokemon_details/presentation/widgets/content/pokemon_detail_description_widget.dart';
import 'package:cf_poke_hatameku/features/pokemon_details/presentation/widgets/content/pokemon_detail_traits_widget.dart';
import 'package:cf_poke_hatameku/features/pokemon_details/presentation/widgets/content/pokemon_detail_type_widget.dart';

class PokemonDetailContentWidget extends StatelessWidget {
  final PokemonModel model;
  final Widget detailImage;

  const PokemonDetailContentWidget({
    required this.model,
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
        PokemonTypeWidget(
          types: model.types,
        ),
        const SizedBox(
          height: 16,
        ),
        PokemonDetailTraitsWidget(
          title: 'About',
          weight: model.weight,
          height: model.height,
          moves: model.moves,
        ),
        const SizedBox(
          height: 16,
        ),
        PokemonDetailDescriptionWidget(
          text: model.description,
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
