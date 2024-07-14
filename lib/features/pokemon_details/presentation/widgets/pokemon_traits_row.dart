import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PokemonTraitsRow extends StatelessWidget {
  final double weight;
  final double height;
  final List<String> moves;

  const PokemonTraitsRow({
    required this.weight,
    required this.height,
    required this.moves,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: IntrinsicHeight(
        child: Row(
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
                    Image.asset(
                      'assets/images/ic_weight.png',
                      fit: BoxFit.fill,
                      height: 16,
                      width: 16,
                    ),
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
                    Image.asset(
                      'assets/images/ic_straighten.png',
                      fit: BoxFit.fill,
                      height: 16,
                      width: 16,
                    ),
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
      ),
    );
  }
}
