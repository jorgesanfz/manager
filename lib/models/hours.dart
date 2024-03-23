import 'meet.dart';

enum HourStatus { out, free, full }

class HourEntry {
  final String timestamp;
  final int hour;
  final bool halfHour;
  final Meet meet;

  HourEntry(
      this.timestamp,{
      required this.hour,
      required this.halfHour,
      required this.meet});

  HourEntry.empty():
    timestamp = '',
    hour = 0,
    halfHour = false,
    meet = Meet.empty();

  @override
  String toString() {
    return 'ID: $timestamp, Hour: $fullHour(), Meet: $meet';
  }

  String fullHour() {
    if (halfHour) {
      return '$hour:30';
    } else {
      return '$hour';
    }
  }

  String toTimestamp(){
    return '';
  }
}
