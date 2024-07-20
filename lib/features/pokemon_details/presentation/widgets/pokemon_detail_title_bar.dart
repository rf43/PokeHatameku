import 'package:flutter/material.dart';

import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import 'package:cf_poke_hatameku/gen/assets.gen.dart';
import 'package:cf_poke_hatameku/theme/cf_hatameku_theme.dart';

class PokemonDetailTitleBar extends StatelessWidget {
  final Color? color;
  final int id;
  final String title;

  const PokemonDetailTitleBar({
    required this.color,
    required this.id,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Material(
          color: color,
          child: InkWell(
            onTap: () {},
            splashColor: Colors.white12,
            child: Ink.image(
              fit: BoxFit.cover,
              width: 32,
              height: 32,
              image: Svg(Assets.images.icArrowBack.path),
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          style: context.theme.textTheme.headlineLarge,
          title,
        ),
        const Spacer(),
        Text(
          style: context.theme.textTheme.headlineSmall,
          '#${id.toString().padLeft(4, '0')}',
        ),
      ],
    );
  }
}
