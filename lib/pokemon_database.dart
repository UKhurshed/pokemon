import 'package:path/path.dart';
import 'package:pokemon/core/constants.dart';
import 'package:pokemon/pokemonFields.dart';
import 'package:sqflite/sqflite.dart';

class PokemonDatabase {
  static final PokemonDatabase instance = PokemonDatabase._init();

  static Database? _database;

  PokemonDatabase._init();

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }
    _database = await _initDB(dataBaseName);
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    const pokemonID = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const pokemonName = 'TEXT NOT NULL';
    const pokemonImageURL = 'TEXT NOT NULL';
    const pokemonFirstAbility = 'TEXT NOT NULL';
    const pokemonSecondAbility = 'TEXT NOT NULL';
    const pokemonTypeName = 'TEXT NOT NULL';
    const pokemonFirstStatsName = 'TEXT NOT NULL';
    const pokemonSecondStatsName = 'TEXT NOT NULL';
    const pokemonThirdStatsName = 'TEXT NOT NULL';
    const pokemonFourthStatsName = 'TEXT NOT NULL';
    const pokemonFirstBaseName = 'TEXT NOT NULL';
    const pokemonSecondBaseName = 'TEXT NOT NULL';
    const pokemonThirdBaseName = 'TEXT NOT NULL';
    const pokemonFourthBaseName = 'TEXT NOT NULL';

    await db.execute('''
    CREATE TABLE $pokemonTable (
    ${PokemonFields.id} $pokemonID,
    ${PokemonFields.pokemonName} $pokemonName,
    ${PokemonFields.pokemonImageURL} $pokemonImageURL,
    ${PokemonFields.pokemonFirstAbility} $pokemonFirstAbility,
    ${PokemonFields.pokemonSecondAbility} $pokemonSecondAbility,
    ${PokemonFields.pokemonTypeName} $pokemonTypeName,
    ${PokemonFields.pokemonFirstStatsName} $pokemonFirstStatsName,
    ${PokemonFields.pokemonSecondStatsName} $pokemonSecondStatsName,
    ${PokemonFields.pokemonThirdStatsName} $pokemonThirdStatsName,
    ${PokemonFields.pokemonFourthStatsName} $pokemonFourthStatsName,
    ${PokemonFields.pokemonFirstBaseName} $pokemonFirstBaseName,
    ${PokemonFields.pokemonSecondBaseName} $pokemonSecondBaseName,
    ${PokemonFields.pokemonThirdBaseName} $pokemonThirdBaseName,
    ${PokemonFields.pokemonFourthBaseName} $pokemonFourthBaseName
    )
    ''');
  }

  Future<PokemonDBModel> create(PokemonDBModel pokemonDB) async {
    final db = await instance.database;

    final id = await db.insert(pokemonTable, pokemonDB.toJson());
    return pokemonDB.copy(id: id);
  }

  Future<PokemonDBModel?> readPokemon(String pokemonName) async {
    final db = await instance.database;

    final maps = await db.query(
      pokemonTable,
      columns: PokemonFields.values,
      where: '${PokemonFields.pokemonName} = ?',
      whereArgs: [pokemonName],
    );

    if (maps.isNotEmpty) {
      return PokemonDBModel.fromJson(maps.first);
    }
    return null;
  }

  Future<bool> isExistingPokemon(String pokemonName) async{
    final db = await instance.database;

    final maps = await db.query(
      pokemonTable,
      columns: PokemonFields.values,
      where: '${PokemonFields.pokemonName} = ?',
      whereArgs: [pokemonName],
    );

    if (maps.isNotEmpty){
      return true;
    }else{
      return false;
    }
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }
}
