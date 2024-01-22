class HourEntry {
  final String id;
  final int hour;
  final int minute;
  final String status;

  HourEntry({required this.id, required this.hour, required this.minute, required this.status});

  @override
  String toString() {
    return 'ID: $id, Hour: $hour, Minute: $minute, Status: $status';
  }
}

void main() {
  List<HourEntry> hoursList = [];

  for (int hour = 8; hour <= 18; hour++) {
    // Add status options and ID as per your requirements
    for (int minute = 0; minute <= 30; minute += 30) {
      hoursList.add(HourEntry(
        id: '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}',
        hour: hour,
        minute: minute,
        status: 'YourStatusOptionHere', // Replace with your status options
      ));
    }
  }

  // Print the generated list
  for (var entry in hoursList) {
    print(entry);
  }
}
