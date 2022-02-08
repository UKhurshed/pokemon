const String pokemonTable = 'pokemons';

class PokemonFields {
  static const List<String> values = [
    id,
    pokemonName,
    pokemonImageURL,
    pokemonFirstAbility,
    pokemonSecondAbility,
    pokemonTypeName,
    pokemonFirstStatsName,
    pokemonSecondStatsName,
    pokemonThirdStatsName,
    pokemonFourthStatsName,
    pokemonFirstBaseName,
    pokemonSecondBaseName,
    pokemonThirdBaseName,
    pokemonFourthBaseName
  ];

  static const String id = '_id';
  static const String pokemonName = 'pokemonName';
  static const String pokemonImageURL = 'pokemonImageURL';
  static const String pokemonFirstAbility = 'pokemonFirstAbility';
  static const String pokemonSecondAbility = 'pokemonSecondAbility';
  static const String pokemonTypeName = 'pokemonTypeName';
  static const String pokemonFirstStatsName = 'pokemonFirstStatsName';
  static const String pokemonSecondStatsName = 'pokemonSecondStatsName';
  static const String pokemonThirdStatsName = 'pokemonThirdStatsName';
  static const String pokemonFourthStatsName = 'pokemonFourthStatsName';
  static const String pokemonFirstBaseName = 'pokemonFirstBaseName';
  static const String pokemonSecondBaseName = 'pokemonSecondBaseName';
  static const String pokemonThirdBaseName = 'pokemonThirdBaseName';
  static const String pokemonFourthBaseName = 'pokemonFourthBaseName';
}

class PokemonDBModel {
  final int? id;
  final String pokemonName;
  final String pokemonImageURL;
  final String pokemonFirstAbility;
  final String pokemonSecondAbility;
  final String pokemonTypeName;
  final String pokemonFirstStatsName;
  final String pokemonSecondStatsName;
  final String pokemonThirdStatsName;
  final String pokemonFourthStatsName;
  final String pokemonFirstBaseName;
  final String pokemonSecondBaseName;
  final String pokemonThirdBaseName;
  final String pokemonFourthBaseName;

  const PokemonDBModel(
      {this.id,
      required this.pokemonName,
      required this.pokemonImageURL,
      required this.pokemonFirstAbility,
      required this.pokemonSecondAbility,
      required this.pokemonTypeName,
      required this.pokemonFirstStatsName,
      required this.pokemonSecondStatsName,
      required this.pokemonThirdStatsName,
      required this.pokemonFourthStatsName,
      required this.pokemonFirstBaseName,
      required this.pokemonSecondBaseName,
      required this.pokemonThirdBaseName,
      required this.pokemonFourthBaseName});

  PokemonDBModel copy({
    int? id,
    String? pokemonName,
    String? pokemonImageURL,
    String? pokemonFirstAbility,
    String? pokemonSecondAbility,
    String? pokemonTypeName,
    String? pokemonFirstStatsName,
    String? pokemonSecondStatsName,
    String? pokemonThirdStatsName,
    String? pokemonFourthStatsName,
    String? pokemonFirstBaseName,
    String? pokemonSecondBaseName,
    String? pokemonThirdBaseName,
    String? pokemonFourthBaseName,
  }) =>
      PokemonDBModel(
          id: id ?? this.id,
          pokemonName: pokemonName ?? this.pokemonName,
          pokemonImageURL: pokemonImageURL ?? this.pokemonImageURL,
          pokemonFirstAbility: pokemonFirstAbility ?? this.pokemonFirstAbility,
          pokemonSecondAbility:
              pokemonSecondAbility ?? this.pokemonSecondAbility,
          pokemonTypeName: pokemonTypeName ?? this.pokemonTypeName,
          pokemonFirstStatsName:
              pokemonFirstStatsName ?? this.pokemonFirstStatsName,
          pokemonSecondStatsName:
              pokemonSecondStatsName ?? this.pokemonSecondStatsName,
          pokemonThirdStatsName:
              pokemonThirdStatsName ?? this.pokemonThirdStatsName,
          pokemonFourthStatsName:
              pokemonFourthStatsName ?? this.pokemonFourthStatsName,
          pokemonFirstBaseName:
              pokemonFirstBaseName ?? this.pokemonFirstBaseName,
          pokemonSecondBaseName:
              pokemonSecondBaseName ?? this.pokemonSecondBaseName,
          pokemonThirdBaseName:
              pokemonThirdBaseName ?? this.pokemonThirdBaseName,
          pokemonFourthBaseName:
              pokemonFourthBaseName ?? this.pokemonFourthBaseName);

  static PokemonDBModel fromJson(Map<String, Object?> json) => PokemonDBModel(
      id: json[PokemonFields.id] as int?,
      pokemonName: json[PokemonFields.pokemonName] as String,
      pokemonImageURL: json[PokemonFields.pokemonImageURL] as String,
      pokemonFirstAbility: json[PokemonFields.pokemonFirstAbility] as String,
      pokemonSecondAbility: json[PokemonFields.pokemonSecondAbility] as String,
      pokemonTypeName: json[PokemonFields.pokemonTypeName] as String,
      pokemonFirstStatsName:
          json[PokemonFields.pokemonFirstStatsName] as String,
      pokemonSecondStatsName:
          json[PokemonFields.pokemonSecondStatsName] as String,
      pokemonThirdStatsName:
          json[PokemonFields.pokemonThirdStatsName] as String,
      pokemonFourthStatsName:
          json[PokemonFields.pokemonFourthStatsName] as String,
      pokemonFirstBaseName: json[PokemonFields.pokemonFirstBaseName] as String,
      pokemonSecondBaseName:
          json[PokemonFields.pokemonSecondBaseName] as String,
      pokemonThirdBaseName: json[PokemonFields.pokemonThirdBaseName] as String,
      pokemonFourthBaseName:
          json[PokemonFields.pokemonFourthBaseName] as String);

  Map<String, Object?> toJson() => {
        PokemonFields.id: id,
        PokemonFields.pokemonName: pokemonName,
        PokemonFields.pokemonImageURL: pokemonImageURL,
        PokemonFields.pokemonFirstAbility: pokemonFirstAbility,
        PokemonFields.pokemonSecondAbility: pokemonSecondAbility,
        PokemonFields.pokemonTypeName: pokemonTypeName,
        PokemonFields.pokemonFirstStatsName: pokemonFirstStatsName,
        PokemonFields.pokemonSecondStatsName: pokemonSecondStatsName,
        PokemonFields.pokemonThirdStatsName: pokemonThirdStatsName,
        PokemonFields.pokemonFourthStatsName: pokemonFourthStatsName,
        PokemonFields.pokemonFirstBaseName: pokemonFirstBaseName,
        PokemonFields.pokemonSecondBaseName: pokemonSecondBaseName,
        PokemonFields.pokemonThirdBaseName: pokemonThirdBaseName,
        PokemonFields.pokemonFourthBaseName: pokemonFourthBaseName,
      };
}
