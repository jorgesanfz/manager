import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../models/client.dart';
import '../models/day.dart';
import '../models/hours.dart';
import '../models/meet.dart';
import '../models/worker.dart';
import '../models/service.dart';

class DatabaseController {
  static final DatabaseController _instance = DatabaseController._internal();

  factory DatabaseController() {
    return _instance;
  }

  DatabaseController._internal();

  late Database database;
  late List<dynamic> data;

  init() async {
    database = await DatabaseInitializer.createTables([
      Client.empty(), Worker.empty(), Service.empty(), Meet.empty(), HourEntry.empty(), Day.empty()
    ]);
    data = await DatabaseInitializer.retrieveData([
      Client.empty(), Worker.empty(), Service.empty(), Meet.empty(), HourEntry.empty(), Day.empty()
    ]);
  }
  
  static createTable(String tableName, List<String> columns) {
    return 'CREATE TABLE $tableName (${columns.join(', ')}) IF NOT EXISTS;';
  }

  static insert(String tableName, List<String> columns, List<String> values) {
    return 'INSERT INTO $tableName (${columns.join(', ')}) VALUES (${values.join(', ')});';
  }

  static select(String tableName, List<String> columns) {
    return 'SELECT ${columns.join(', ')} FROM $tableName;';
  }

  static update(String tableName, List<String> columns, List<String> values) {
    return 'UPDATE $tableName SET ${columns.join(', ')} = ${values.join(', ')};';
  }

  static delete(String tableName) {
    return 'DELETE FROM $tableName WHERE id = ?;';
  }
}

class DatabaseInitializer {
  static Future<Database> createTables(List<dynamic> models) async {
    final database = openDatabase(
      join(await getDatabasesPath(), 'manager.db'),
      version: 1,
    );

    for (var model in models) {
      List<String> columns = [];
      model.toJson().forEach((key, value) {
        columns.add('$key ${value.runtimeType}');
      });

      String createTableQuery = DatabaseController.createTable(
          "${model.runtimeType.toString().toLowerCase()}s", columns);

      await database.then((db) => db.execute(createTableQuery));
    }

    return database;
  }

  static Future<List<dynamic>> retrieveData(List<dynamic> models) async {
  //String tableName, List<String> columns) async {
    final db = DatabaseController().database;
    List<dynamic> data = [];
    for (var model in models) {
      List<String> columns = [];
      model.toJson().forEach((key, value) {
        columns.add('$key ${value.runtimeType}');
      });

      String selectQuery = DatabaseController.select(
          "${model.runtimeType.toString().toLowerCase()}s", columns);

      final List<Map<String, dynamic>> maps = await db.query(selectQuery);

      data.add(List.generate(maps.length, (i) {
        return model.fromJson(maps[i]);
      }));
    }
    return data;
  }
}
