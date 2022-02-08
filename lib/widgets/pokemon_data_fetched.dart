import 'package:flutter/material.dart';
import '../database/pokemon_fields.dart';
import 'widgets.dart';

class PokemonDataFetched extends StatelessWidget {
  final PokemonDBModel pokemon;
  final bool isSearchPokemon;

  const PokemonDataFetched(
      {Key? key, required this.pokemon, required this.isSearchPokemon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        isSearchPokemon ? const InputTextField() : const RandomPokemonButton(),
        const SizedBox(
          height: 20,
        ),
        PokemonName(
          pokemonName: pokemon.pokemonName,
        ),
        const SizedBox(
          height: 10,
        ), // pokemon.abilities[0].ability.name,
        PokemonImage(pokemonImageURL: pokemon.pokemonImageURL),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PokemonAbilities(
              firstAbility: pokemon.pokemonFirstAbility,
              secondAbility: pokemon.pokemonSecondAbility,
              typeName: pokemon.pokemonTypeName,
            ),
            const SizedBox(
              width: 30,
            ),
            PokemonStatistics(pokemon: pokemon),
          ],
        ),
      ],
    );
  }
}
