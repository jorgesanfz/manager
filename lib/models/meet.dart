

import 'package:manager/models/client.dart';
import 'package:manager/models/service.dart';
import 'package:manager/models/worker.dart';

class Meet {
  final Worker worker;
  final Client client;
  final String timestamp;
  final Service service;

  Meet(this.timestamp,
      {required this.worker, required this.client, required this.service});

  Meet.empty()
      : worker = Worker.empty(),
        client = Client.empty(),
        service = Service.empty(),
        timestamp = '';

  Map<String, dynamic> toMap() {
    return {
      'worker': worker.toMap(),
      'client': client.toMap(),
      'service': service.toMap(),
      'timestamp': timestamp,
    };
  }

  @override
  String toString() {
    return '$worker, $client, $service';
  }
}