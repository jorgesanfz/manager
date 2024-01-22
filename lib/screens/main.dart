import 'package:flutter/material.dart';
import 'package:manager/layouts/abstract/column_of_rows.dart';
// import 'package:manager/screens/settings.dart';
import 'package:manager/widgets/console/console.dart';

import '../widgets/sidebar.dart';
import 'meets.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String _currentScreen = '/'; // Default to HomeScreen

  void _navigateTo(String route) {
    setState(() {
      _currentScreen = route;
    });
  }

  Widget currentWidget = const Center(
    child: ColumnOfRows(),
  );

  @override
  Widget build(BuildContext context) {
    switch (_currentScreen) {
      case '/':
      case '/meets':
        currentWidget = Meets(onNavigate: _navigateTo);
        break;
      case '/settings':
        currentWidget = ConsoleWidget();
            //Settings(onNavigate: _navigateTo);
        break;
      default:
        currentWidget = Container(); // Handle unknown route
    }
    return Scaffold(
        appBar: AppBar(),
        drawer: Sidebar(onNavigate: _navigateTo),
        body: currentWidget,
    );
  }
}
