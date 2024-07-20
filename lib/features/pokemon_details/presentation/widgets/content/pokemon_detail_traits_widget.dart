import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:cf_poke_hatameku/gen/assets.gen.dart';
import 'package:cf_poke_hatameku/theme/cf_hatameku_theme.dart';

class PokemonDetailTraitsWidget extends StatelessWidget {
  final String title;
  final double weight;
  final double height;
  final List<String> moves;

  const PokemonDetailTraitsWidget({
    required this.title,
    required this.weight,
    required this.height,
    required this.moves,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Figure out a better way to lay this out...
    return Material(
      color: Colors.transparent,
      child: IntrinsicHeight(
        child: Column(
          children: [
            Text(
              style: context.theme.textTheme.titleMedium,
              title,
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Assets.images.icWeight.svg(width: 16),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          '$weight kg',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.w200,
                          height: 1.2,
                          color: Colors.black,
                        ),
                      ),
                      'Weight',
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                  ],
                ),
                const VerticalDivider(
                  width: 48,
                  thickness: 1.0,
                  color: Colors.black26,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Assets.images.icVertRuler.svg(width: 16),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          '$height m',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.w200,
                          height: 1.2,
                          color: Colors.black,
                        ),
                      ),
                      'Height',
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                  ],
                ),
                const VerticalDivider(
                  width: 48,
                  thickness: 1.0,
                  color: Colors.black26,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 4,
                    ),
                    Column(
                      children: [
                        for (var text in moves)
                          Text(
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            text,
                          ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.w200,
                          height: 1.2,
                          color: Colors.black,
                        ),
                      ),
                      'Moves',
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
