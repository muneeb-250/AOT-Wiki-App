import 'package:aot_characters_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import './screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      theme: ThemeData(
          // textTheme: GoogleFonts.berkshireSwashTextTheme(textTheme).copyWith(
          //   bodyText1: GoogleFonts.berkshireSwash(textStyle: textTheme.bodyText1),
          fontFamily: 'BerkshireSwash-Regular'),
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
    );
  }
}
