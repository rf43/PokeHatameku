import 'package:cf_poke_hatameku/features/pokemon_details/data/pokemon_stats_model.dart';
import 'package:cf_poke_hatameku/features/pokemon_details/presentation/widgets/stats_graph/stats_names.dart';
import 'package:cf_poke_hatameku/theme/cf_hatameku_theme.dart';
import 'package:flutter/material.dart';

class PokemonDetailBaseStatsWidget extends StatelessWidget {
  final PokemonStats stats;

  const PokemonDetailBaseStatsWidget({
    required this.stats,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Column(
        children: [
          Text(
            style: context.theme.textTheme.titleMedium,
            'Base Stats',
          ),
          const SizedBox(
            height: 16,
          ),
          IntrinsicHeight(
            child: Row(
              children: [
                PokemonStatsNames(names: stats.statNames()),
                const VerticalDivider(
                  width: 32,
                ),
                // PokemonStatsNumbers(stats: stats.asMap().values.toList()),
                // PokemonStatsGraph(stats: stats.asMap().values.toList()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
