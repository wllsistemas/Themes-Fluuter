import 'package:flutter/material.dart';

final themeIndigo = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
  scaffoldBackgroundColor: Colors.grey[50],
  primaryColor: Colors.indigo,
  primaryColorLight: Colors.indigo[100],
  switchTheme: SwitchThemeData(
    thumbColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.indigo;
      }
      return Colors.grey;
    }),
    trackColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.indigo[100];
      }
      return Colors.grey[200];
    }),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.indigo,
    foregroundColor: Colors.white,
  ),
  useMaterial3: true,
);
