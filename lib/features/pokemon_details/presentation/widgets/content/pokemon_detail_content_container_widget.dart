import 'package:flutter/material.dart';

class PokemonDetailContentContainerWidget extends StatelessWidget {
  const PokemonDetailContentContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        border: Border.all(
          color: Colors.black12,
          width: 2,
        ),
        color: Colors.white,
      ),
    );
  }
}
