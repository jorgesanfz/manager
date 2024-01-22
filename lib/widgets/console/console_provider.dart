
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'console.dart';

final consoleProvider = ChangeNotifierProvider<ConsoleNotifier>((ref) {
  return ConsoleNotifier();
});
