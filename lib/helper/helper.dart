import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'dart:io';

class Helper {
  static Database? _database;
  static const String bazarList = 'bazar_list';
  static const String bazarListView = 'bazar_list_view';

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }
    _database = await initDatabase();
    return _database!;
  }

  Future<Database> initDatabase() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, 'bazar_list.db');

    return await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute('''
                CREATE TABLE $bazarList(
                  id INTEGER PRIMARY KEY AUTOINCREMENT,
                  title TEXT,
                  createdAt TEXT
                )
              ''');

      await db.execute('''
          CREATE TABLE $bazarListView(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            
          )
''');
    });
  }
}
