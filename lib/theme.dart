import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData myTheme(BuildContext context) => ThemeData(
    primaryColor: Color(0xFFA984FF),
    backgroundColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    textTheme: GoogleFonts.ibmPlexSansTextTheme(Theme.of(context).textTheme)
        .copyWith(
            headline4: TextStyle(color: Colors.white),
            headline3: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 35)),
    appBarTheme: AppBarTheme(color: Colors.white),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            textStyle: MaterialStateProperty.all(
                TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            minimumSize: MaterialStateProperty.all(Size(300, 60)))));
