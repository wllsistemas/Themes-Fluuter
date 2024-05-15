import 'package:flutter/material.dart';

final themeGrey = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
  scaffoldBackgroundColor: Colors.grey[50],
  primaryColor: Colors.grey,
  primaryColorLight: Colors.grey[100],
  switchTheme: SwitchThemeData(
    thumbColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.grey;
      }
      return Colors.grey;
    }),
    trackColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.grey[100];
      }
      return Colors.grey[200];
    }),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.grey,
    foregroundColor: Colors.white,
  ),
  useMaterial3: true,
);
