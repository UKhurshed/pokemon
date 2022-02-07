import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/screens/random_pokemon_screen.dart';
import 'package:pokemon/search_cubit/search_pokemon_cubit.dart';
import 'package:pokemon/widgets/input_textField_widget.dart';
import '../repository/search_pokemon_repository.dart';
import '../widgets/loading_widget.dart';
import '../widgets/pokemon_data_fetched.dart';

class SearchPokemonScreen extends StatelessWidget {
  const SearchPokemonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon'),
        backgroundColor: Colors.amberAccent,
        actions: [
          GestureDetector(child: const Icon(Icons.navigate_next), onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>
              BlocProvider(
                create: (context) => SearchPokemonCubit(SearchPokemonByNameRepositoryImpl()),
                child: const RandomPokemonScreen(),
              )
            ));
          },),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 50),
          alignment: Alignment.center,
          child: BlocBuilder<SearchPokemonCubit, SearchPokemonState>(
            builder: (context, state) {
              if (state is SearchPokemonInitial) {
                return const InputTextField();
              } else if (state is SearchPokemonLoading) {
                return const LoadingWidget();
              } else if (state is SearchPokemonFetched) {
                return PokemonDataFetched(pokemon: state.pokemon, isSearchPokemon: true,);
              } else if (state is SearchPokemonError) {
                return errorHandledAndRefreshState(state, context);
              } else {
                return const InputTextField();
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
                final refreshPokemonCubit = context.read<SearchPokemonCubit>();
                refreshPokemonCubit.getPokemon("1");
              },
              child: const Text('Refresh')),
        ],
      ),
    );
  }
}
