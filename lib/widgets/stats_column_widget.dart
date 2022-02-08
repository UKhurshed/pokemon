import 'package:flutter/material.dart';
import '../pokemonFields.dart';
import 'widgets.dart';

class StatsColumn extends StatelessWidget {
  final PokemonDBModel pokemon;

  const StatsColumn({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Statistics',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        StatsItem(
          statName: pokemon.pokemonFirstStatsName,
          baseStateName: pokemon.pokemonFirstBaseName,
        ),
        StatsItem(
          statName: pokemon.pokemonSecondStatsName,
          baseStateName: pokemon.pokemonSecondBaseName,
        ),
        StatsItem(
          statName: pokemon.pokemonThirdStatsName,
          baseStateName: pokemon.pokemonThirdBaseName,
        ),
        StatsItem(
          statName: pokemon.pokemonFourthStatsName,
          baseStateName: pokemon.pokemonFourthBaseName,
        ),
      ],
    );
  }
}
