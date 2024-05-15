import 'package:flutter/material.dart';

final themeTeal = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
  scaffoldBackgroundColor: Colors.grey[50],
  primaryColor: Colors.teal,
  primaryColorLight: Colors.teal[100],
  switchTheme: SwitchThemeData(
    thumbColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.teal;
      }
      return Colors.grey;
    }),
    trackColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.teal[100];
      }
      return Colors.grey[200];
    }),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.teal,
    foregroundColor: Colors.white,
  ),
  useMaterial3: true,
);
