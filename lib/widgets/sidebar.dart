import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  final Function(String) onNavigate;

  Sidebar({required this.onNavigate});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: Text('Meets'),
            onTap: () {
              // Handle navigation to Home screen
              onNavigate('/meets');
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            title: Text('Settings'),
            onTap: () {
              onNavigate('/settings');
              // Handle navigation to Details screen
              Navigator.pop(context); // Close the drawer
            },
          ),
          // Add more ListTiles for additional screens
        ],
      ),
    );
  }
}