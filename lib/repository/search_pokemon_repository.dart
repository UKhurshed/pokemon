import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pokemon/core/constants.dart';
import 'package:pokemon/database/pokemon_database.dart';
import '../database/pokemon_fields.dart';
import '../model/search_pokemon_model.dart';

abstract class SearchPokemonByNameRepository {
  Future<PokemonDBModel> getPokemon(String query);
}

class SearchPokemonByNameRepositoryImpl
    implements SearchPokemonByNameRepository {
  @override
  Future<PokemonDBModel> getPokemon(String query) async {
    final PokemonDBModel pokemonDBModel;
    final pokemonChecking = await isExistingPokemon(query);
    final pokemonRead = await pokemonReadFromDB(query);
    try {
      if (pokemonChecking && pokemonRead != null) {
        debugPrint("db worked");
        return pokemonRead;
      } else {
        debugPrint("api worked");
        pokemonDBModel = await pokemonGETRequest(query);
        return pokemonDBModel;
      }
    } catch (error) {
      debugPrint("Error trying: ${error.toString()}");
      throw Exception(error);
    }
  }

  Future<PokemonDBModel> pokemonGETRequest(String query) async {
    final Pokemon pokemon;
    final PokemonDBModel pokemonDBModel;
    final http.Response response =
        await http.get(Uri.parse('$baseUrl/pokemon/$query'));
    if (response.statusCode == 200) {
      debugPrint('Response data: ${response.body}');
      pokemon = Pokemon.fromJson(jsonDecode(response.body));
      pokemonDBModel = PokemonDBModel(
          pokemonName: pokemon.name,
          pokemonImageURL: pokemon.sprites.frontDefault,
          pokemonFirstAbility: pokemon.abilities[0].ability.name,
          pokemonSecondAbility: pokemon.abilities[1].ability.name,
          pokemonTypeName: pokemon.types[0].type.name,
          pokemonFirstStatsName: pokemon.stats[0].stat.name,
          pokemonSecondStatsName: pokemon.stats[1].stat.name,
          pokemonThirdStatsName: pokemon.stats[2].stat.name,
          pokemonFourthStatsName: pokemon.stats[3].stat.name,
          pokemonFirstBaseName: pokemon.stats[0].baseStat.toString(),
          pokemonSecondBaseName: pokemon.stats[1].baseStat.toString(),
          pokemonThirdBaseName: pokemon.stats[2].baseStat.toString(),
          pokemonFourthBaseName: pokemon.stats[3].baseStat.toString());
      await PokemonDatabase.instance.create(pokemonDBModel);
      return pokemonDBModel;
    } else {
      debugPrint("Error status: ${response.statusCode} & ${response.body}");
      throw Exception("status: ${response.statusCode} & ${response.body}");
    }
  }

  Future<PokemonDBModel?> pokemonReadFromDB(String query) async {
    final PokemonDBModel? pokemonDBModel;
    final pokemonCheck = await isExistingPokemon(query);
    pokemonDBModel = await PokemonDatabase.instance.readPokemon(query);
    if (pokemonCheck && pokemonDBModel != null) {
      return pokemonDBModel;
    }
    return null;
  }

  Future<bool> isExistingPokemon(String query) async {
    final pokemonCheck =
        await PokemonDatabase.instance.isExistingPokemon(query);
    if (pokemonCheck) {
      return true;
    } else {
      return false;
    }
  }
}
