import 'package:flutter/material.dart';

final themeOrange = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
  scaffoldBackgroundColor: Colors.grey[50],
  primaryColor: Colors.deepOrange,
  primaryColorLight: Colors.deepOrange[100],
  switchTheme: SwitchThemeData(
    thumbColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.deepOrange;
      }
      return Colors.grey;
    }),
    trackColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.deepOrange[100];
      }
      return Colors.grey[200];
    }),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.deepOrange,
    foregroundColor: Colors.white,
  ),
  useMaterial3: true,
);
