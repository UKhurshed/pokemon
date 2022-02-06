import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pokemon/model/search_pokemon_model.dart';

part 'search_pokemon_state.dart';

class SearchPokemonCubit extends Cubit<SearchPokemonState> {
  SearchPokemonCubit() : super(const SearchPokemonInitial());
}
