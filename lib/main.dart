// import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:manager/screens/main.dart';
import 'package:manager/utils/database.dart';
import 'package:manager/utils/themes.dart';
import '../models/client.dart';
import 'models/day.dart';
import 'models/hours.dart';
import 'models/meet.dart';
import 'models/worker.dart';
import 'models/service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: Manager()));

  DatabaseInitializer.createTables([
    Client.empty(), Worker.empty(), Service.empty(), Meet.empty(), HourEntry.empty(), Day.empty()
  ]);

  /*final database = openDatabase(join(await getDatabasesPath(), 'manager.db'),
    onCreate: (db, version) {
      return db.execute(
        'CREATE TABLE users(id INTEGER PRIMARY KEY, name TEXT, age INTEGER) IF NOT EXISTS;',
      );
    },
    version: 1,
  );*/

  /*doWhenWindowReady(() {
    const initialSize = Size(1200, 800);
    appWindow.minSize = initialSize;
    appWindow.size = initialSize;
    appWindow.alignment = Alignment.center;
    appWindow.show();
  });*/
}

class Manager extends StatelessWidget {
  const Manager({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1080, 720),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: MainTheme.getThemeData(),
          //home: const MyHomePage(title: 'Flutter Demo Home Page'),
          home: const MainPage(),
        );
      },
    );
  }
}
