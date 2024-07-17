import 'dart:collection';

import 'package:flutter/material.dart';

import 'package:cf_poke_hatameku/theme/cf_hatameku_theme.dart';

class PokemonStatsNames extends StatelessWidget {
  final LinkedHashSet<String> names;

  const PokemonStatsNames({required this.names, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: names
            .map(
              (name) => Text(
                style: context.theme.textTheme.titleSmall?.copyWith(
                  fontSize: 11,
                  height: 1.5,
                ),
                name.toUpperCase(),
              ),
            )
            .toList(),
      ),
    );
  }
}
