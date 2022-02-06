import 'package:http/http.dart' as http;

import '../model/search_pokemon_model.dart';

abstract class SearchPokemonByNameRepository{
  Future<Pokemon> getPokemon(String query);
}

class SearchPokemonByNameRepositoryImpl implements SearchPokemonByNameRepository{
  final BASE_URL = 'https://pokeapi.co/api/v2/';

  @override
  Future<Pokemon> getPokemon(String query) {

    throw UnimplementedError();
  }
  
}