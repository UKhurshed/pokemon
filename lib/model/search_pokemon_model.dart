class Pokemon {
  Pokemon({
    required this.abilities,
    required this.baseExperience,
    required this.forms,
    required this.gameIndices,
    required this.height,
    required this.heldItems,
    required this.id,
    required this.isDefault,
    required this.locationAreaEncounters,
    required this.moves,
    required this.name,
    required this.order,
    required this.pastTypes,
    required this.species,
    required this.sprites,
    required this.stats,
    required this.types,
    required this.weight,
  });

  late final List<Abilities> abilities;
  late final int baseExperience;
  late final List<Forms> forms;
  late final List<GameIndices> gameIndices;
  late final int height;
  late final List<dynamic> heldItems;
  late final int id;
  late final bool isDefault;
  late final String locationAreaEncounters;
  late final List<Moves> moves;
  late final String name;
  late final int order;
  late final List<dynamic> pastTypes;
  late final Species species;
  late final Sprites sprites;
  late final List<Stats> stats;
  late final List<Types> types;
  late final int weight;

  Pokemon.fromJson(Map<String, dynamic> json) {
    abilities =
        List.from(json['abilities']).map((e) => Abilities.fromJson(e)).toList();
    baseExperience = json['base_experience'];
    forms = List.from(json['forms']).map((e) => Forms.fromJson(e)).toList();
    gameIndices = List.from(json['game_indices'])
        .map((e) => GameIndices.fromJson(e))
        .toList();
    height = json['height'];
    heldItems = List.castFrom<dynamic, dynamic>(json['held_items']);
    id = json['id'];
    isDefault = json['is_default'];
    locationAreaEncounters = json['location_area_encounters'];
    moves = List.from(json['moves']).map((e) => Moves.fromJson(e)).toList();
    name = json['name'];
    order = json['order'];
    pastTypes = List.castFrom<dynamic, dynamic>(json['past_types']);
    species = Species.fromJson(json['species']);
    sprites = Sprites.fromJson(json['sprites']);
    stats = List.from(json['stats']).map((e) => Stats.fromJson(e)).toList();
    types = List.from(json['types']).map((e) => Types.fromJson(e)).toList();
    weight = json['weight'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['abilities'] = abilities.map((e) => e.toJson()).toList();
    _data['base_experience'] = baseExperience;
    _data['forms'] = forms.map((e) => e.toJson()).toList();
    _data['game_indices'] = gameIndices.map((e) => e.toJson()).toList();
    _data['height'] = height;
    _data['held_items'] = heldItems;
    _data['id'] = id;
    _data['is_default'] = isDefault;
    _data['location_area_encounters'] = locationAreaEncounters;
    _data['moves'] = moves.map((e) => e.toJson()).toList();
    _data['name'] = name;
    _data['order'] = order;
    _data['past_types'] = pastTypes;
    _data['species'] = species.toJson();
    _data['sprites'] = sprites.toJson();
    _data['stats'] = stats.map((e) => e.toJson()).toList();
    _data['types'] = types.map((e) => e.toJson()).toList();
    _data['weight'] = weight;
    return _data;
  }
}

class Abilities {
  Abilities({
    required this.ability,
    required this.isHidden,
    required this.slot,
  });

  late final Ability ability;
  late final bool isHidden;
  late final int slot;

  Abilities.fromJson(Map<String, dynamic> json) {
    ability = Ability.fromJson(json['ability']);
    isHidden = json['is_hidden'];
    slot = json['slot'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['ability'] = ability.toJson();
    _data['is_hidden'] = isHidden;
    _data['slot'] = slot;
    return _data;
  }
}

class Ability {
  Ability({
    required this.name,
    required this.url,
  });

  late final String name;
  late final String url;

  Ability.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['url'] = url;
    return _data;
  }
}

class Forms {
  Forms({
    required this.name,
    required this.url,
  });

  late final String name;
  late final String url;

  Forms.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['url'] = url;
    return _data;
  }
}

class GameIndices {
  GameIndices({
    required this.gameIndex,
    required this.version,
  });

  late final int gameIndex;
  late final Version version;

  GameIndices.fromJson(Map<String, dynamic> json) {
    gameIndex = json['game_index'];
    version = Version.fromJson(json['version']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['game_index'] = gameIndex;
    _data['version'] = version.toJson();
    return _data;
  }
}

class Version {
  Version({
    required this.name,
    required this.url,
  });

  late final String name;
  late final String url;

  Version.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['url'] = url;
    return _data;
  }
}

class Moves {
  Moves({
    required this.move,
    required this.versionGroupDetails,
  });

  late final Move move;
  late final List<VersionGroupDetails> versionGroupDetails;

  Moves.fromJson(Map<String, dynamic> json) {
    move = Move.fromJson(json['move']);
    versionGroupDetails = List.from(json['version_group_details'])
        .map((e) => VersionGroupDetails.fromJson(e))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['move'] = move.toJson();
    _data['version_group_details'] =
        versionGroupDetails.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Move {
  Move({
    required this.name,
    required this.url,
  });

  late final String name;
  late final String url;

  Move.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['url'] = url;
    return _data;
  }
}

class VersionGroupDetails {
  VersionGroupDetails({
    required this.levelLearnedAt,
    required this.moveLearnMethod,
    required this.versionGroup,
  });

  late final int levelLearnedAt;
  late final MoveLearnMethod moveLearnMethod;
  late final VersionGroup versionGroup;

  VersionGroupDetails.fromJson(Map<String, dynamic> json) {
    levelLearnedAt = json['level_learned_at'];
    moveLearnMethod = MoveLearnMethod.fromJson(json['move_learn_method']);
    versionGroup = VersionGroup.fromJson(json['version_group']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['level_learned_at'] = levelLearnedAt;
    _data['move_learn_method'] = moveLearnMethod.toJson();
    _data['version_group'] = versionGroup.toJson();
    return _data;
  }
}

class MoveLearnMethod {
  MoveLearnMethod({
    required this.name,
    required this.url,
  });

  late final String name;
  late final String url;

  MoveLearnMethod.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['url'] = url;
    return _data;
  }
}

class VersionGroup {
  VersionGroup({
    required this.name,
    required this.url,
  });

  late final String name;
  late final String url;

  VersionGroup.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['url'] = url;
    return _data;
  }
}

class Species {
  Species({
    required this.name,
    required this.url,
  });

  late final String name;
  late final String url;

  Species.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['url'] = url;
    return _data;
  }
}

class Sprites {
  Sprites({
    required this.backDefault,
    this.backFemale,
    required this.backShiny,
    this.backShinyFemale,
    required this.frontDefault,
    this.frontFemale,
    required this.frontShiny,
    this.frontShinyFemale,
    required this.other,
    required this.versions,
  });

  late final String backDefault;
  late final Null backFemale;
  late final String backShiny;
  late final Null backShinyFemale;
  late final String frontDefault;
  late final Null frontFemale;
  late final String frontShiny;
  late final Null frontShinyFemale;
  late final Other other;
  late final Versions versions;

  Sprites.fromJson(Map<String, dynamic> json) {
    backDefault = json['back_default'];
    backFemale = null;
    backShiny = json['back_shiny'];
    backShinyFemale = null;
    frontDefault = json['front_default'];
    frontFemale = null;
    frontShiny = json['front_shiny'];
    frontShinyFemale = null;
    other = Other.fromJson(json['other']);
    versions = Versions.fromJson(json['versions']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['back_default'] = backDefault;
    _data['back_female'] = backFemale;
    _data['back_shiny'] = backShiny;
    _data['back_shiny_female'] = backShinyFemale;
    _data['front_default'] = frontDefault;
    _data['front_female'] = frontFemale;
    _data['front_shiny'] = frontShiny;
    _data['front_shiny_female'] = frontShinyFemale;
    _data['other'] = other.toJson();
    _data['versions'] = versions.toJson();
    return _data;
  }
}

class Other {
  Other({
    required this.dreamWorld,
    required this.home,
    required this.officialArtwork,
  });

  late final DreamWorld dreamWorld;
  late final Home home;
  late final OfficialArtwork officialArtwork;

  Other.fromJson(Map<String, dynamic> json) {
    dreamWorld = DreamWorld.fromJson(json['dream_world']);
    home = Home.fromJson(json['home']);
    officialArtwork = OfficialArtwork.fromJson(json['official-artwork']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['dream_world'] = dreamWorld.toJson();
    _data['home'] = home.toJson();
    _data['official-artwork'] = officialArtwork.toJson();
    return _data;
  }
}

class DreamWorld {
  DreamWorld({
    required this.frontDefault,
    this.frontFemale,
  });

  late final String frontDefault;
  late final Null frontFemale;

  DreamWorld.fromJson(Map<String, dynamic> json) {
    frontDefault = json['front_default'];
    frontFemale = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['front_default'] = frontDefault;
    _data['front_female'] = frontFemale;
    return _data;
  }
}

class Home {
  Home({
    required this.frontDefault,
    this.frontFemale,
    required this.frontShiny,
    this.frontShinyFemale,
  });

  late final String frontDefault;
  late final Null frontFemale;
  late final String frontShiny;
  late final Null frontShinyFemale;

  Home.fromJson(Map<String, dynamic> json) {
    frontDefault = json['front_default'];
    frontFemale = null;
    frontShiny = json['front_shiny'];
    frontShinyFemale = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['front_default'] = frontDefault;
    _data['front_female'] = frontFemale;
    _data['front_shiny'] = frontShiny;
    _data['front_shiny_female'] = frontShinyFemale;
    return _data;
  }
}

class OfficialArtwork {
  OfficialArtwork({
    required this.frontDefault,
  });

  late final String frontDefault;

  OfficialArtwork.fromJson(Map<String, dynamic> json) {
    frontDefault = json['front_default'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['front_default'] = frontDefault;
    return _data;
  }
}

class Versions {
  Versions({
    required this.generationI,
    required this.generationIi,
    required this.generationIii,
    required this.generationIv,
    required this.generationV,
    required this.generationVi,
    required this.generationVii,
    required this.generationViii,
  });

  late final GenerationI generationI;
  late final GenerationIi generationIi;
  late final GenerationIii generationIii;
  late final GenerationIv generationIv;
  late final GenerationV generationV;
  late final GenerationVi generationVi;
  late final GenerationVii generationVii;
  late final GenerationViii generationViii;

  Versions.fromJson(Map<String, dynamic> json) {
    generationI = GenerationI.fromJson(json['generation-i']);
    generationIi = GenerationIi.fromJson(json['generation-ii']);
    generationIii = GenerationIii.fromJson(json['generation-iii']);
    generationIv = GenerationIv.fromJson(json['generation-iv']);
    generationV = GenerationV.fromJson(json['generation-v']);
    generationVi = GenerationVi.fromJson(json['generation-vi']);
    generationVii = GenerationVii.fromJson(json['generation-vii']);
    generationViii = GenerationViii.fromJson(json['generation-viii']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['generation-i'] = generationI.toJson();
    _data['generation-ii'] = generationIi.toJson();
    _data['generation-iii'] = generationIii.toJson();
    _data['generation-iv'] = generationIv.toJson();
    _data['generation-v'] = generationV.toJson();
    _data['generation-vi'] = generationVi.toJson();
    _data['generation-vii'] = generationVii.toJson();
    _data['generation-viii'] = generationViii.toJson();
    return _data;
  }
}

class GenerationI {
  GenerationI({
    required this.redBlue,
    required this.yellow,
  });

  late final RedBlue redBlue;
  late final Yellow yellow;

  GenerationI.fromJson(Map<String, dynamic> json) {
    redBlue = RedBlue.fromJson(json['red-blue']);
    yellow = Yellow.fromJson(json['yellow']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['red-blue'] = redBlue.toJson();
    _data['yellow'] = yellow.toJson();
    return _data;
  }
}

class RedBlue {
  RedBlue({
    required this.backDefault,
    required this.backGray,
    required this.backTransparent,
    required this.frontDefault,
    required this.frontGray,
    required this.frontTransparent,
  });

  late final String backDefault;
  late final String backGray;
  late final String backTransparent;
  late final String frontDefault;
  late final String frontGray;
  late final String frontTransparent;

  RedBlue.fromJson(Map<String, dynamic> json) {
    backDefault = json['back_default'];
    backGray = json['back_gray'];
    backTransparent = json['back_transparent'];
    frontDefault = json['front_default'];
    frontGray = json['front_gray'];
    frontTransparent = json['front_transparent'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['back_default'] = backDefault;
    _data['back_gray'] = backGray;
    _data['back_transparent'] = backTransparent;
    _data['front_default'] = frontDefault;
    _data['front_gray'] = frontGray;
    _data['front_transparent'] = frontTransparent;
    return _data;
  }
}

class Yellow {
  Yellow({
    required this.backDefault,
    required this.backGray,
    required this.backTransparent,
    required this.frontDefault,
    required this.frontGray,
    required this.frontTransparent,
  });

  late final String backDefault;
  late final String backGray;
  late final String backTransparent;
  late final String frontDefault;
  late final String frontGray;
  late final String frontTransparent;

  Yellow.fromJson(Map<String, dynamic> json) {
    backDefault = json['back_default'];
    backGray = json['back_gray'];
    backTransparent = json['back_transparent'];
    frontDefault = json['front_default'];
    frontGray = json['front_gray'];
    frontTransparent = json['front_transparent'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['back_default'] = backDefault;
    _data['back_gray'] = backGray;
    _data['back_transparent'] = backTransparent;
    _data['front_default'] = frontDefault;
    _data['front_gray'] = frontGray;
    _data['front_transparent'] = frontTransparent;
    return _data;
  }
}

class GenerationIi {
  GenerationIi({
    required this.crystal,
    required this.gold,
    required this.silver,
  });

  late final Crystal crystal;
  late final Gold gold;
  late final Silver silver;

  GenerationIi.fromJson(Map<String, dynamic> json) {
    crystal = Crystal.fromJson(json['crystal']);
    gold = Gold.fromJson(json['gold']);
    silver = Silver.fromJson(json['silver']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['crystal'] = crystal.toJson();
    _data['gold'] = gold.toJson();
    _data['silver'] = silver.toJson();
    return _data;
  }
}

class Crystal {
  Crystal({
    required this.backDefault,
    required this.backShiny,
    required this.backShinyTransparent,
    required this.backTransparent,
    required this.frontDefault,
    required this.frontShiny,
    required this.frontShinyTransparent,
    required this.frontTransparent,
  });

  late final String backDefault;
  late final String backShiny;
  late final String backShinyTransparent;
  late final String backTransparent;
  late final String frontDefault;
  late final String frontShiny;
  late final String frontShinyTransparent;
  late final String frontTransparent;

  Crystal.fromJson(Map<String, dynamic> json) {
    backDefault = json['back_default'];
    backShiny = json['back_shiny'];
    backShinyTransparent = json['back_shiny_transparent'];
    backTransparent = json['back_transparent'];
    frontDefault = json['front_default'];
    frontShiny = json['front_shiny'];
    frontShinyTransparent = json['front_shiny_transparent'];
    frontTransparent = json['front_transparent'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['back_default'] = backDefault;
    _data['back_shiny'] = backShiny;
    _data['back_shiny_transparent'] = backShinyTransparent;
    _data['back_transparent'] = backTransparent;
    _data['front_default'] = frontDefault;
    _data['front_shiny'] = frontShiny;
    _data['front_shiny_transparent'] = frontShinyTransparent;
    _data['front_transparent'] = frontTransparent;
    return _data;
  }
}

class Gold {
  Gold({
    required this.backDefault,
    required this.backShiny,
    required this.frontDefault,
    required this.frontShiny,
    required this.frontTransparent,
  });

  late final String backDefault;
  late final String backShiny;
  late final String frontDefault;
  late final String frontShiny;
  late final String frontTransparent;

  Gold.fromJson(Map<String, dynamic> json) {
    backDefault = json['back_default'];
    backShiny = json['back_shiny'];
    frontDefault = json['front_default'];
    frontShiny = json['front_shiny'];
    frontTransparent = json['front_transparent'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['back_default'] = backDefault;
    _data['back_shiny'] = backShiny;
    _data['front_default'] = frontDefault;
    _data['front_shiny'] = frontShiny;
    _data['front_transparent'] = frontTransparent;
    return _data;
  }
}

class Silver {
  Silver({
    required this.backDefault,
    required this.backShiny,
    required this.frontDefault,
    required this.frontShiny,
    required this.frontTransparent,
  });

  late final String backDefault;
  late final String backShiny;
  late final String frontDefault;
  late final String frontShiny;
  late final String frontTransparent;

  Silver.fromJson(Map<String, dynamic> json) {
    backDefault = json['back_default'];
    backShiny = json['back_shiny'];
    frontDefault = json['front_default'];
    frontShiny = json['front_shiny'];
    frontTransparent = json['front_transparent'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['back_default'] = backDefault;
    _data['back_shiny'] = backShiny;
    _data['front_default'] = frontDefault;
    _data['front_shiny'] = frontShiny;
    _data['front_transparent'] = frontTransparent;
    return _data;
  }
}

class GenerationIii {
  GenerationIii(
      {required this.emerald,
      required this.fireredLeafgreen,
      required this.rubySapphire});

  late final Emerald emerald;
  late final FireredLeafgreen fireredLeafgreen;
  late final RubySapphire rubySapphire;

  GenerationIii.fromJson(Map<String, dynamic> json) {
    emerald = Emerald.fromJson(json['emerald']);
    fireredLeafgreen = FireredLeafgreen.fromJson(json['firered-leafgreen']);
    rubySapphire = RubySapphire.fromJson(json['ruby-sapphire']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['emerald'] = emerald.toJson();
    _data['firered-leafgreen'] = fireredLeafgreen.toJson();
    _data['ruby-sapphire'] = rubySapphire.toJson();
    return _data;
  }
}

class Emerald {
  Emerald({
    required this.frontDefault,
    required this.frontShiny,
  });

  late final String frontDefault;
  late final String frontShiny;

  Emerald.fromJson(Map<String, dynamic> json) {
    frontDefault = json['front_default'];
    frontShiny = json['front_shiny'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['front_default'] = frontDefault;
    _data['front_shiny'] = frontShiny;
    return _data;
  }
}

class FireredLeafgreen {
  FireredLeafgreen({
    required this.backDefault,
    required this.backShiny,
    required this.frontDefault,
    required this.frontShiny,
  });

  late final String backDefault;
  late final String backShiny;
  late final String frontDefault;
  late final String frontShiny;

  FireredLeafgreen.fromJson(Map<String, dynamic> json) {
    backDefault = json['back_default'];
    backShiny = json['back_shiny'];
    frontDefault = json['front_default'];
    frontShiny = json['front_shiny'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['back_default'] = backDefault;
    _data['back_shiny'] = backShiny;
    _data['front_default'] = frontDefault;
    _data['front_shiny'] = frontShiny;
    return _data;
  }
}

class RubySapphire {
  RubySapphire({
    required this.backDefault,
    required this.backShiny,
    required this.frontDefault,
    required this.frontShiny,
  });

  late final String backDefault;
  late final String backShiny;
  late final String frontDefault;
  late final String frontShiny;

  RubySapphire.fromJson(Map<String, dynamic> json) {
    backDefault = json['back_default'];
    backShiny = json['back_shiny'];
    frontDefault = json['front_default'];
    frontShiny = json['front_shiny'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['back_default'] = backDefault;
    _data['back_shiny'] = backShiny;
    _data['front_default'] = frontDefault;
    _data['front_shiny'] = frontShiny;
    return _data;
  }
}

class GenerationIv {
  GenerationIv({
    required this.diamondPearl,
    required this.heartgoldSoulsilver,
    required this.platinum,
  });

  late final DiamondPearl diamondPearl;
  late final HeartgoldSoulsilver heartgoldSoulsilver;
  late final Platinum platinum;

  GenerationIv.fromJson(Map<String, dynamic> json) {
    diamondPearl = DiamondPearl.fromJson(json['diamond-pearl']);
    heartgoldSoulsilver =
        HeartgoldSoulsilver.fromJson(json['heartgold-soulsilver']);
    platinum = Platinum.fromJson(json['platinum']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['diamond-pearl'] = diamondPearl.toJson();
    _data['heartgold-soulsilver'] = heartgoldSoulsilver.toJson();
    _data['platinum'] = platinum.toJson();
    return _data;
  }
}

class DiamondPearl {
  DiamondPearl({
    required this.backDefault,
    this.backFemale,
    required this.backShiny,
    this.backShinyFemale,
    required this.frontDefault,
    this.frontFemale,
    required this.frontShiny,
    this.frontShinyFemale,
  });

  late final String backDefault;
  late final Null backFemale;
  late final String backShiny;
  late final Null backShinyFemale;
  late final String frontDefault;
  late final Null frontFemale;
  late final String frontShiny;
  late final Null frontShinyFemale;

  DiamondPearl.fromJson(Map<String, dynamic> json) {
    backDefault = json['back_default'];
    backFemale = null;
    backShiny = json['back_shiny'];
    backShinyFemale = null;
    frontDefault = json['front_default'];
    frontFemale = null;
    frontShiny = json['front_shiny'];
    frontShinyFemale = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['back_default'] = backDefault;
    _data['back_female'] = backFemale;
    _data['back_shiny'] = backShiny;
    _data['back_shiny_female'] = backShinyFemale;
    _data['front_default'] = frontDefault;
    _data['front_female'] = frontFemale;
    _data['front_shiny'] = frontShiny;
    _data['front_shiny_female'] = frontShinyFemale;
    return _data;
  }
}

class HeartgoldSoulsilver {
  HeartgoldSoulsilver({
    required this.backDefault,
    this.backFemale,
    required this.backShiny,
    this.backShinyFemale,
    required this.frontDefault,
    this.frontFemale,
    required this.frontShiny,
    this.frontShinyFemale,
  });

  late final String backDefault;
  late final Null backFemale;
  late final String backShiny;
  late final Null backShinyFemale;
  late final String frontDefault;
  late final Null frontFemale;
  late final String frontShiny;
  late final Null frontShinyFemale;

  HeartgoldSoulsilver.fromJson(Map<String, dynamic> json) {
    backDefault = json['back_default'];
    backFemale = null;
    backShiny = json['back_shiny'];
    backShinyFemale = null;
    frontDefault = json['front_default'];
    frontFemale = null;
    frontShiny = json['front_shiny'];
    frontShinyFemale = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['back_default'] = backDefault;
    _data['back_female'] = backFemale;
    _data['back_shiny'] = backShiny;
    _data['back_shiny_female'] = backShinyFemale;
    _data['front_default'] = frontDefault;
    _data['front_female'] = frontFemale;
    _data['front_shiny'] = frontShiny;
    _data['front_shiny_female'] = frontShinyFemale;
    return _data;
  }
}

class Platinum {
  Platinum({
    required this.backDefault,
    this.backFemale,
    required this.backShiny,
    this.backShinyFemale,
    required this.frontDefault,
    this.frontFemale,
    required this.frontShiny,
    this.frontShinyFemale,
  });

  late final String backDefault;
  late final Null backFemale;
  late final String backShiny;
  late final Null backShinyFemale;
  late final String frontDefault;
  late final Null frontFemale;
  late final String frontShiny;
  late final Null frontShinyFemale;

  Platinum.fromJson(Map<String, dynamic> json) {
    backDefault = json['back_default'];
    backFemale = null;
    backShiny = json['back_shiny'];
    backShinyFemale = null;
    frontDefault = json['front_default'];
    frontFemale = null;
    frontShiny = json['front_shiny'];
    frontShinyFemale = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['back_default'] = backDefault;
    _data['back_female'] = backFemale;
    _data['back_shiny'] = backShiny;
    _data['back_shiny_female'] = backShinyFemale;
    _data['front_default'] = frontDefault;
    _data['front_female'] = frontFemale;
    _data['front_shiny'] = frontShiny;
    _data['front_shiny_female'] = frontShinyFemale;
    return _data;
  }
}

class GenerationV {
  GenerationV({required this.blackWhite});

  late final BlackWhite blackWhite;

  GenerationV.fromJson(Map<String, dynamic> json) {
    blackWhite = BlackWhite.fromJson(json['black-white']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['black-white'] = blackWhite.toJson();
    return _data;
  }
}

class BlackWhite {
  BlackWhite({
    required this.animated,
    required this.backDefault,
    this.backFemale,
    required this.backShiny,
    this.backShinyFemale,
    required this.frontDefault,
    this.frontFemale,
    required this.frontShiny,
    this.frontShinyFemale,
  });

  late final Animated animated;
  late final String backDefault;
  late final Null backFemale;
  late final String backShiny;
  late final Null backShinyFemale;
  late final String frontDefault;
  late final Null frontFemale;
  late final String frontShiny;
  late final Null frontShinyFemale;

  BlackWhite.fromJson(Map<String, dynamic> json) {
    animated = Animated.fromJson(json['animated']);
    backDefault = json['back_default'];
    backFemale = null;
    backShiny = json['back_shiny'];
    backShinyFemale = null;
    frontDefault = json['front_default'];
    frontFemale = null;
    frontShiny = json['front_shiny'];
    frontShinyFemale = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['animated'] = animated.toJson();
    _data['back_default'] = backDefault;
    _data['back_female'] = backFemale;
    _data['back_shiny'] = backShiny;
    _data['back_shiny_female'] = backShinyFemale;
    _data['front_default'] = frontDefault;
    _data['front_female'] = frontFemale;
    _data['front_shiny'] = frontShiny;
    _data['front_shiny_female'] = frontShinyFemale;
    return _data;
  }
}

class Animated {
  Animated({
    required this.backDefault,
    this.backFemale,
    required this.backShiny,
    this.backShinyFemale,
    required this.frontDefault,
    this.frontFemale,
    required this.frontShiny,
    this.frontShinyFemale,
  });

  late final String backDefault;
  late final Null backFemale;
  late final String backShiny;
  late final Null backShinyFemale;
  late final String frontDefault;
  late final Null frontFemale;
  late final String frontShiny;
  late final Null frontShinyFemale;

  Animated.fromJson(Map<String, dynamic> json) {
    backDefault = json['back_default'];
    backFemale = null;
    backShiny = json['back_shiny'];
    backShinyFemale = null;
    frontDefault = json['front_default'];
    frontFemale = null;
    frontShiny = json['front_shiny'];
    frontShinyFemale = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['back_default'] = backDefault;
    _data['back_female'] = backFemale;
    _data['back_shiny'] = backShiny;
    _data['back_shiny_female'] = backShinyFemale;
    _data['front_default'] = frontDefault;
    _data['front_female'] = frontFemale;
    _data['front_shiny'] = frontShiny;
    _data['front_shiny_female'] = frontShinyFemale;
    return _data;
  }
}

class GenerationVi {
  GenerationVi({
    required this.omegarubyAlphasapphire,
    required this.xy,
  });

  late final OmegarubyAlphasapphire omegarubyAlphasapphire;
  late final XY xy;

  GenerationVi.fromJson(Map<String, dynamic> json) {
    omegarubyAlphasapphire =
        OmegarubyAlphasapphire.fromJson(json['omegaruby-alphasapphire']);
    xy = XY.fromJson(json['x-y']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['omegaruby-alphasapphire'] = omegarubyAlphasapphire.toJson();
    _data['x-y'] = xy.toJson();
    return _data;
  }
}

class OmegarubyAlphasapphire {
  OmegarubyAlphasapphire({
    required this.frontDefault,
    this.frontFemale,
    required this.frontShiny,
    this.frontShinyFemale,
  });

  late final String frontDefault;
  late final Null frontFemale;
  late final String frontShiny;
  late final Null frontShinyFemale;

  OmegarubyAlphasapphire.fromJson(Map<String, dynamic> json) {
    frontDefault = json['front_default'];
    frontFemale = null;
    frontShiny = json['front_shiny'];
    frontShinyFemale = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['front_default'] = frontDefault;
    _data['front_female'] = frontFemale;
    _data['front_shiny'] = frontShiny;
    _data['front_shiny_female'] = frontShinyFemale;
    return _data;
  }
}

class XY {
  XY({
    required this.frontDefault,
    this.frontFemale,
    required this.frontShiny,
    this.frontShinyFemale,
  });

  late final String frontDefault;
  late final Null frontFemale;
  late final String frontShiny;
  late final Null frontShinyFemale;

  XY.fromJson(Map<String, dynamic> json) {
    frontDefault = json['front_default'];
    frontFemale = null;
    frontShiny = json['front_shiny'];
    frontShinyFemale = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['front_default'] = frontDefault;
    _data['front_female'] = frontFemale;
    _data['front_shiny'] = frontShiny;
    _data['front_shiny_female'] = frontShinyFemale;
    return _data;
  }
}

class GenerationVii {
  GenerationVii({required this.icons, required this.utraSunUltraMoon});

  late final IconsPoke icons;
  late final UltraSunUltraMoon utraSunUltraMoon;

  GenerationVii.fromJson(Map<String, dynamic> json) {
    icons = IconsPoke.fromJson(json['icons']);
    utraSunUltraMoon = UltraSunUltraMoon.fromJson(json['ultra-sun-ultra-moon']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['icons'] = icons.toJson();
    _data['ultra-sun-ultra-moon'] = utraSunUltraMoon.toJson();
    return _data;
  }
}

class IconsPoke {
  IconsPoke({
    required this.frontDefault,
    this.frontFemale,
  });

  late final String frontDefault;
  late final Null frontFemale;

  IconsPoke.fromJson(Map<String, dynamic> json) {
    frontDefault = json['front_default'];
    frontFemale = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['front_default'] = frontDefault;
    _data['front_female'] = frontFemale;
    return _data;
  }
}

class UltraSunUltraMoon {
  UltraSunUltraMoon({
    required this.frontDefault,
    this.frontFemale,
    required this.frontShiny,
    this.frontShinyFemale,
  });

  late final String frontDefault;
  late final Null frontFemale;
  late final String frontShiny;
  late final Null frontShinyFemale;

  UltraSunUltraMoon.fromJson(Map<String, dynamic> json) {
    frontDefault = json['front_default'];
    frontFemale = null;
    frontShiny = json['front_shiny'];
    frontShinyFemale = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['front_default'] = frontDefault;
    _data['front_female'] = frontFemale;
    _data['front_shiny'] = frontShiny;
    _data['front_shiny_female'] = frontShinyFemale;
    return _data;
  }
}

class GenerationViii {
  GenerationViii({
    required this.icons,
  });

  late final IconsPoke icons;

  GenerationViii.fromJson(Map<String, dynamic> json) {
    icons = IconsPoke.fromJson(json['icons']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['icons'] = icons.toJson();
    return _data;
  }
}

class Stats {
  Stats({
    required this.baseStat,
    required this.effort,
    required this.stat,
  });

  late final int baseStat;
  late final int effort;
  late final Stat stat;

  Stats.fromJson(Map<String, dynamic> json) {
    baseStat = json['base_stat'];
    effort = json['effort'];
    stat = Stat.fromJson(json['stat']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['base_stat'] = baseStat;
    _data['effort'] = effort;
    _data['stat'] = stat.toJson();
    return _data;
  }
}

class Stat {
  Stat({
    required this.name,
    required this.url,
  });

  late final String name;
  late final String url;

  Stat.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['url'] = url;
    return _data;
  }
}

class Types {
  Types({
    required this.slot,
    required this.type,
  });

  late final int slot;
  late final Type type;

  Types.fromJson(Map<String, dynamic> json) {
    slot = json['slot'];
    type = Type.fromJson(json['type']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['slot'] = slot;
    _data['type'] = type.toJson();
    return _data;
  }
}

class Type {
  Type({
    required this.name,
    required this.url,
  });

  late final String name;
  late final String url;

  Type.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['url'] = url;
    return _data;
  }
}
