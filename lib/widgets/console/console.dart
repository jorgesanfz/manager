import 'package:flutter/material.dart';

class ConsoleNotifier extends ChangeNotifier {
  List<String> messages = [];

  //List<String> get messages => _messages;

  void addMessage(String message) {
    messages.add(message);
    notifyListeners();
  }
}

class ConsoleState {
  final List<String> messages;

  ConsoleState(this.messages);
}

class ConsoleWidget extends StatefulWidget {
  const ConsoleWidget({super.key});

  @override
  _ConsoleWidgetState createState() => _ConsoleWidgetState();
}

class _ConsoleWidgetState extends State<ConsoleWidget> {
  List<String> messages = [];

  void addMessage(String message) {
    setState(() {
      messages.add(message);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      color: Colors.grey[200],
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              'Console',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 16.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: Colors.grey),
              ),
              child: SingleChildScrollView(
                reverse: true,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: messages.map((message) => Text(message)).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Console App'),
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue,
              child: Center(
                child: Text('Main Content'),
              ),
            ),
          ),
          ConsoleWidget(),
        ],
      ),
    ),
  ));
}
