import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'database.dart';

final dataProvider = Provider<List<dynamic>>((ref) {
  return DatabaseController().data;
});