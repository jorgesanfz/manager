import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../screens/meets.dart';
import 'column_of_rows.dart';

class MainScaffold extends StatelessWidget {
  Widget currentWidget = const Center(
    child: ColumnOfRows(),
  );

  @override
  Widget build(BuildContext context) {
    /*switch (_currentScreen) {
      case '/':
        currentWidget = Meets(onNavigate: _navigateTo);
        break;
      case '/details':
        currentWidget = DetailsScreen(onNavigate: _navigateTo);
        break;
      default:
        currentWidget = Container(); // Handle unknown route
    }*/
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: currentWidget
    );
  }
}