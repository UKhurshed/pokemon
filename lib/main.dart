import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/repository/search_pokemon_repository.dart';
import 'package:pokemon/screens/search_pokemon_screen.dart';
import 'package:pokemon/search_cubit/search_pokemon_cubit.dart';
import 'core/constants.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const PokemonApp());
}

class PokemonApp extends StatelessWidget {
  const PokemonApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: pokemonTitle,
      home: BlocProvider<SearchPokemonCubit>(
        create: (context) => SearchPokemonCubit(SearchPokemonByNameRepositoryImpl()),
        child: const SearchPokemonScreen(),
      ),
    );
  }
}


