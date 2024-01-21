import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  final Function(String) onNavigate;

  Settings({required this.onNavigate});

  @override
  State<Settings> createState() => _SettingsState();

}

class _SettingsState extends State<Settings>{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          widget.onNavigate('/');
        },
        child: Text('Go to Meets'),
      ),
    );
  }

}