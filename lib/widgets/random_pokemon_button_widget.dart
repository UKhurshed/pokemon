import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../search_cubit/search_pokemon_cubit.dart';


class RandomPokemonButton extends StatelessWidget {
  const RandomPokemonButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: FloatingActionButton.extended(
          backgroundColor: Colors.red,
          elevation: 1,
          onPressed: () => submitPokemonName(context),
          label: const Text('Random Pokemon',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        ));
  }

  void submitPokemonName(BuildContext context) {
    Provider.of<SearchPokemonCubit>(context, listen: false).randomPokemon();
  }
}