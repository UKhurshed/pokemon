import 'package:flutter/material.dart';
import 'package:pokemon/model/search_pokemon_model.dart';
import 'widgets.dart';

class PokemonDataFetched extends StatelessWidget {
  final Pokemon pokemon;
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
          pokemonName: pokemon.name,
        ),
        const SizedBox(
          height: 10,
        ), // pokemon.abilities[0].ability.name,
        PokemonImage(pokemonImageURL: pokemon.sprites.frontDefault),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PokemonAbilities(
              firstAbility: pokemon.abilities[0].ability.name,
              secondAbility: pokemon.abilities[1].ability.name,
              typeName: pokemon.types[0].type.name,
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
