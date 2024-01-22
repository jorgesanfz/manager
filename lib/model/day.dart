import 'package:manager/model/meet.dart';
import 'package:manager/model/worker.dart';

class Day {
  final String open;
  final String close;
  late final int hours;
  final List<Map<int, Worker>> slots;
  //final Map<int, Worker> workerDay;
  final List<Worker> workers;


  Day(this.open, this.slots, this.workers, this.hours = initHours(open, close), {
    required this.close
  })

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
}