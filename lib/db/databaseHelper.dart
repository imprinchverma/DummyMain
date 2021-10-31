import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DataBaseHelper {
  static final _databaseName = "movie.db";
  static final _databaseVersion = 1;
  static final table = "my_table";
  static final columnMovieName = "movie_name";
  static final columnId = "id";
  static final columnDirectorName = "director_name";
  static final columnPoster = "poster";
  static final columnDate = "release_date";

  static Database? _database;

  DataBaseHelper._privateConstructor();

  static final DataBaseHelper instance = DataBaseHelper._privateConstructor();

  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await initDataBase();
  }

  initDataBase() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, _databaseName);
    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
         CREATE TABLE $table(
         $columnId INTEGER PRIMARY KEY,
         $columnMovieName TEXT NOT NULL,
         $columnDirectorName TEXT NOT NULL,
         $columnPoster TEXT NOT NULL,
         $columnDate INTEGER NOT NULL )
      ''');
  }

  // Custom Function CURD
  Future<int> insert(Map<String, dynamic> row) async {
    Database? db = await instance.database;
    return await db!.insert(table, row);
  }
  Future<List<Map<String,dynamic>>> queryAll() async{
    Database? db = await instance.database;
    return await db!.query(table);
  }
  Future updateValue(Map<String,dynamic> row) async{
    Database? db = await instance.database;
    int id = row[columnId];
    return await db!.update(table, row,where: '$columnId=?',whereArgs: [id]);
  }
  Future<int> delete(int id) async
  {
    Database? db = await instance.database;
    return await db!.delete(table,where:'$columnId =?',whereArgs: [id]);
  }
}

