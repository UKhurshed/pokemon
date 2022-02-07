import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pokemon/core/constants.dart';

import '../model/search_pokemon_model.dart';

abstract class SearchPokemonByNameRepository{
  Future<Pokemon> getPokemon(String query);
}

class SearchPokemonByNameRepositoryImpl implements SearchPokemonByNameRepository{

  @override
  Future<Pokemon> getPokemon(String query) async{
    final Pokemon pokemon;
    try{
      final http.Response response = await http.get(Uri.parse('$baseUrl/pokemon/$query'));
      if (response.statusCode == 200){
        debugPrint('Response data: ${response.body}');
        pokemon = Pokemon.fromJson(jsonDecode(response.body));
        return pokemon;
      }else{
        debugPrint("Error status: ${response.statusCode} & ${response.body}");
        throw Exception("status: ${response.statusCode} & ${response.body}");
      }
    }catch(error){
      debugPrint("Error trying: ${error.toString()}");
      throw Exception(error);
    }
  }
  
}