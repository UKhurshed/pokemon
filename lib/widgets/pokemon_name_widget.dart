import 'package:flutter/material.dart';

class PokemonName extends StatelessWidget {
  final String pokemonName;

  const PokemonName({Key? key, required this.pokemonName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      pokemonName,
      style: const TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}