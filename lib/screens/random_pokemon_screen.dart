import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/widgets/pokemon_data_fetched.dart';
import 'package:pokemon/widgets/random_pokemon_button_widget.dart';
import 'package:provider/provider.dart';
import '../search_cubit/search_pokemon_cubit.dart';
import '../widgets/loading_widget.dart';

class RandomPokemonScreen extends StatefulWidget {
  const RandomPokemonScreen({Key? key}) : super(key: key);

  @override
  State<RandomPokemonScreen> createState() => _RandomPokemonScreenState();
}

class _RandomPokemonScreenState extends State<RandomPokemonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random Pokemon'),
        backgroundColor: Colors.amberAccent,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 50),
          alignment: Alignment.center,
          child: BlocBuilder<SearchPokemonCubit, SearchPokemonState>(
            builder: (context, state) {
              if (state is SearchPokemonInitial) {
                return const RandomPokemonButton();
              } else if (state is SearchPokemonLoading) {
                return const LoadingWidget();
              } else if (state is SearchPokemonFetched) {
                return PokemonDataFetched(
                    pokemon: state.pokemon, isSearchPokemon: false);
              } else if (state is SearchPokemonError) {
                return errorHandledAndRefreshState(state, context);
              } else {
                return const RandomPokemonButton();
              }
            },
          ),
        ),
      ),
    );
  }

  Center errorHandledAndRefreshState(
      SearchPokemonError state, BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Text(state.message),
          const SizedBox(
            height: 100,
          ),
          ElevatedButton(
              onPressed: () {
                Provider.of<SearchPokemonCubit>(context, listen: false)
                    .randomPokemon();
              },
              child: const Text('Refresh')),
        ],
      ),
    );
  }
}
