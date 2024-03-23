import 'package:manager/services/database.dart';
import 'package:sqflite/sqflite.dart';

class Client {
  final int id;
  final String name;
  final String surname;
  final int phone;

  Client(this.id, this.name, this.phone, this.surname);

  Client.empty()
      : id = 0,
        name = '',
        surname = '',
        phone = 0;

  Map<String, dynamic> toMap() =>
      {
        'id': id,
        'name': name,
        'surname': surname,
        'phone': phone,
      };

  @override
  String toString() {
    return '$id, $name, $phone';
  }

  Future<void> insertClient(Client client) async {
    final db = DatabaseController().database;

    await db.insert(
      'clients', client.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}
