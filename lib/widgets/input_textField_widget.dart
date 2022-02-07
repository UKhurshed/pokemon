import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../search_cubit/search_pokemon_cubit.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: TextField(
          onSubmitted: (value) => submitPokemonName(context, value),
          textInputAction: TextInputAction.search,
          decoration: InputDecoration(
            hintText: 'Enter Pokemon name',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            suffixIcon: const Icon(Icons.search),
          ),
        ),
      ),
    );
  }

  void submitPokemonName(BuildContext context, String pokemonName) {
    final searchPokemonCubit = context.read<SearchPokemonCubit>();
    searchPokemonCubit.getPokemon(pokemonName);
  }
}