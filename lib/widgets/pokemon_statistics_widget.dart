import 'package:flutter/material.dart';
import '../pokemonFields.dart';
import 'widgets.dart';
import '../model/search_pokemon_model.dart';

class PokemonStatistics extends StatelessWidget {
  final PokemonDBModel pokemon;

  const PokemonStatistics({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.grey.shade200,
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: StatsColumn(
            pokemon: pokemon,
          ),
        ),
      ),
    );
  }
}