import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainTheme extends Theme {
  const MainTheme({super.key, required super.data, required super.child});

  static getThemeData() {
    return ThemeData(
      primaryColor: Colors.blueAccent,
      fontFamily: 'Roboto',
      /*
        colorScheme: const ColorScheme.light(
            onPrimary: Colors.blueAccent,
            onSecondary: Colors.white,
            onTertiary: Colors.red),
         */
      // This is the theme of your application.
      //
      // TRY THIS: Try running your application with "flutter run". You'll see
      // the application has a purple toolbar. Then, without quitting the app,
      // try changing the seedColor in the colorScheme below to Colors.green
      // and then invoke "hot reload" (save your changes or press the "hot
      // reload" button in a Flutter-supported IDE, or press "r" if you used
      // the command line to start the app).
      //
      // Notice that the counter didn't reset back to zero; the application
      // state is not lost during the reload. To reset the state, use hot
      // restart instead.
      //
      // This works for code too, not just values: Most code changes can be
      // tested with just a hot reload.
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      textTheme: TextTheme(
        bodyMedium: GoogleFonts.roboto(fontSize: 15).apply(fontSizeFactor: 1.sp)
      ),
      /*
      iconTheme: IconThemeData(
        size: 10.sp
      ),
       */
      useMaterial3: true,
    );
  }
}
