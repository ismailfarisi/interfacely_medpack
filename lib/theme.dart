import 'package:flutter/material.dart';

final theme = ThemeData(
    primaryColor: Color(0xFFA984FF),
    backgroundColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(color: Colors.white),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            textStyle: MaterialStateProperty.all(
                TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            minimumSize: MaterialStateProperty.all(Size(300, 60)))));
