import 'package:flutter/material.dart';
import 'widgets.dart';
import '../model/search_pokemon_model.dart';

class StatsColumn extends StatelessWidget {
  final Pokemon pokemon;

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
          statName: pokemon.stats[0].stat.name,
          baseStateName: pokemon.stats[0].baseStat.toString(),
        ),
        StatsItem(
          statName: pokemon.stats[1].stat.name,
          baseStateName: pokemon.stats[1].baseStat.toString(),
        ),
        StatsItem(
          statName: pokemon.stats[1].stat.name,
          baseStateName: pokemon.stats[1].baseStat.toString(),
        ),
        StatsItem(
          statName: pokemon.stats[2].stat.name,
          baseStateName: pokemon.stats[2].baseStat.toString(),
        ),
        StatsItem(
          statName: pokemon.stats[3].stat.name,
          baseStateName: pokemon.stats[3].baseStat.toString(),
        ),
      ],
    );
  }
}