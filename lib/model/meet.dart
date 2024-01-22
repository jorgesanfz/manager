

import 'package:manager/model/client.dart';
import 'package:manager/model/service.dart';
import 'package:manager/model/worker.dart';

class Meet {
  final Worker worker;
  final Client client;
  final String timestamp;
  final Service service;

  Meet(this.timestamp,
      {required this.worker, required this.client, required this.service});

  @override
  String toString() {
    return '$worker, $client, $service';
  }
}