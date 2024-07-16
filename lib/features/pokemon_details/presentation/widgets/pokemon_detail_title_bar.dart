import 'package:cf_poke_hatameku/theme/cf_hatameku_theme.dart';
import 'package:flutter/material.dart';

class PokemonDetailTitleBar extends StatelessWidget {
  final String title;
  final int id;

  const PokemonDetailTitleBar({
    required this.title,
    required this.id,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Material(
          color: context.hatamekuColors.grass,
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
