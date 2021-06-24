import 'package:dashboard/screens/mainScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Admin Panel',
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: bgColor,
          textTheme: GoogleFonts.poppinsTextTheme(Theme
              .of(context)
              .textTheme).apply(bodyColor: Colors.white),
          canvasColor: secondaryColor
      ),
      home: MainScreen(),
    );
  }
}
