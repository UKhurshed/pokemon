part of 'search_pokemon_cubit.dart';

@immutable
abstract class SearchPokemonState {
  const SearchPokemonState();
}

class SearchPokemonInitial extends SearchPokemonState {
  const SearchPokemonInitial();
}

class SearchPokemonLoading extends SearchPokemonState {
  const SearchPokemonLoading();
}

class SearchPokemonFetched extends SearchPokemonState {
  final Pokemon pokemon;

  const SearchPokemonFetched(this.pokemon);
}

class SearchPokemonError extends SearchPokemonState {
  final String message;

  const SearchPokemonError(this.message);
}