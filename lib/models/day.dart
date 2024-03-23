import 'package:manager/models/worker.dart';
import 'package:sqflite/sqflite.dart';

import '../main.dart';
import '../services/database.dart';

class Day {
  final String open;
  final String close;
  late final int hours;
  final List<Map<int, Worker>> slots;

  //final Map<int, Worker> workerDay;
  final List<Worker> workers;

  Day(this.open, this.slots, this.workers, this.hours, {required this.close});

  Day.empty()
      : open = '',
        close = '',
        slots = [],
        workers = [],
        hours = 0;

  void initHours(beginningHour, endingHour) {
    int totalHours = endingHour - beginningHour;
    int halfHourUnits = totalHours * 2;

    hours = halfHourUnits;
  }

  void initSlots(beginningHour, endingHour) {
    // Recuperar trabajadores del dia
    // crear un Map<int, worker> por worker
    int totalHours = endingHour - beginningHour;
    int halfHourUnits = totalHours * 2;

    hours = halfHourUnits;
  }

  Map<String, dynamic> toMap() {
    return {
      'open': open,
      'close': close,
      'hours': hours,
      'slots': slots,
      'workers': workers,
    };
  }

  Future<void> insertDay(Day day) async {
    final db = DatabaseController().database;

    await db.insert(
      'days', day.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}
