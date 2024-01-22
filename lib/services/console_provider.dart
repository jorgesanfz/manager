import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/console/console.dart';

final consoleProvider =
    ChangeNotifierProvider<ConsoleNotifier>((ref) {
  return ConsoleNotifier();
});

// context.read(consoleProvider).addMessage('Message from AnotherWidget');
//, List<String>