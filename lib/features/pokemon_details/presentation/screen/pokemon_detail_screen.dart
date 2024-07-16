import 'package:cf_poke_hatameku/features/pokemon_details/data/pokemon_model.dart';
import 'package:cf_poke_hatameku/features/pokemon_details/presentation/widgets/content/pokemon_detail_content_container_widget.dart';
import 'package:cf_poke_hatameku/features/pokemon_details/presentation/widgets/content/pokemon_detail_content_widget.dart';
import 'package:cf_poke_hatameku/features/pokemon_details/presentation/widgets/content/pokemon_detail_image.dart';
import 'package:cf_poke_hatameku/features/pokemon_details/presentation/widgets/pokemon_detail_title_bar.dart';
import 'package:cf_poke_hatameku/theme/cf_hatameku_theme.dart';
import 'package:flutter/material.dart';

class PokemonDetailScreen extends StatelessWidget {
  final PokemonModel model;

  const PokemonDetailScreen({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    var color = model.types[0].getColor(context);

    return Stack(
      fit: StackFit.expand,
      children: [
        // Background fill
        Container(
          color: color,
        ),

        // Pokeball flair
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

        // Title bar
        Positioned(
          top: context.screenSize.height * 0.07,
          left: context.screenSize.width * 0.05,
          right: context.screenSize.width * 0.075,
          child: PokemonDetailTitleBar(
            color: color,
            title: model.name,
            id: model.id,
          ),
        ),

        // For now, this is a bit of hackery where we're creating
        // the illusion that the content is contained within the
        // content area. I do not like this one bit...
        // TODO: Figure out a better way to lay the content out!
        //
        // Content background
        Positioned.fill(
          top: context.screenSize.height * 0.35,
          child: const Padding(
            padding: EdgeInsets.all(4),
            child: PokemonDetailContentContainerWidget(),
          ),
        ),

        // Content
        Positioned.fill(
          top: context.screenSize.height * 0.13,
          child: Padding(
            padding: const EdgeInsets.only(left: 4, right: 4),
            child: PokemonDetailContentWidget(
              detailImage: PokemonDetailImage(
                imagePath: model.imageUri,
                // Making this 30% of the screen height
                // TODO: Is there a better way???
                width: context.screenSize.height * 0.3,
                height: context.screenSize.height * 0.3,
              ),
              model: model,
            ),
          ),
        ),
      ],
    );
  }
}
