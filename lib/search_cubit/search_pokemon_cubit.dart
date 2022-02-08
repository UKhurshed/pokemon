import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:pokemon/repository/search_pokemon_repository.dart';
import '../database/pokemon_fields.dart';

part 'search_pokemon_state.dart';

class SearchPokemonCubit extends Cubit<SearchPokemonState> {
  final SearchPokemonByNameRepository _searchPokemonByNameRepository;

  SearchPokemonCubit(this._searchPokemonByNameRepository) : super(const SearchPokemonInitial());

  Future<void> getPokemon(String pokemonName) async{
    try{
      emit(const SearchPokemonLoading());
      final pokemon = await _searchPokemonByNameRepository.getPokemon(pokemonName);
      emit(SearchPokemonFetched(pokemon));
    }catch(error){
      debugPrint("Cubit error: ${error.toString()}");
      emit(SearchPokemonError(error.toString()));
    }
  }


  Future<void> randomPokemon() async{
    final random = Random();
    //from 1 to 893
    var randomNum = random.nextInt(100) + 2;
    try{
      emit(const SearchPokemonLoading());
      final pokemon = await _searchPokemonByNameRepository.getPokemon(randomNum.toString());
      emit(SearchPokemonFetched(pokemon));
    }catch(error){
      debugPrint('Random Cubit Error: $error');
      emit(SearchPokemonError(error.toString()));
    }
  }
}
