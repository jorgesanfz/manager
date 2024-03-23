import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseController {
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
  static Future<void> createTables(List<dynamic> models) async {
    final database = openDatabase(
      join(await getDatabasesPath(), 'manager.db'),
      version: 1,
    );

    for (var model in models) {
      List<String> columns = [];
      model.toJson().forEach((key, value) {
        columns.add('$key ${value.runtimeType}');
      });

      String createTableQuery = DatabaseController.createTable(model.runtimeType.toString(), columns);

      await database.then((db) => db.execute(createTableQuery));
    }
  }
}