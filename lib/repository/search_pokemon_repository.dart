import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/search_pokemon_model.dart';

abstract class SearchPokemonByNameRepository{
  Future<Pokemon> getPokemon(String query);
}

class SearchPokemonByNameRepositoryImpl implements SearchPokemonByNameRepository{
  final BASE_URL = 'https://pokeapi.co/api/v2/';

  @override
  Future<Pokemon> getPokemon(String query) async{
    final Pokemon pokemon;
    try{
      final http.Response response = await http.get(Uri.parse('$BASE_URL/pokemon/$query'));
      if (response.statusCode == 200){
        debugPrint('Response data: ${response.body}');
      }
      pokemon = Pokemon.fromJson(jsonDecode(response.body));
      return pokemon;
    }catch(error){
      throw(Exception(error));
    }
  }
  
}