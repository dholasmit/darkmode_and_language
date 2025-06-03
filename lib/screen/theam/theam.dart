import 'package:flutter/material.dart';

class AppThemes {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(color: Colors.blue),
    iconTheme: const IconThemeData(color: Colors.black),
    textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.black)),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.deepPurple,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(color: Colors.deepPurple),
    iconTheme: const IconThemeData(color: Colors.white),
    textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
  );

  static final greenTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.green,
    scaffoldBackgroundColor: Colors.green[50],
    appBarTheme: const AppBarTheme(color: Colors.green),
    iconTheme: const IconThemeData(color: Colors.green),
    textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.black)),
  );
}
