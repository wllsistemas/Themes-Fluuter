import 'package:app_pdv/core/enums.dart';
import 'package:app_pdv/core/themes/theme_blue.dart';
import 'package:app_pdv/core/themes/theme_green.dart';
import 'package:app_pdv/core/themes/theme_grey.dart';
import 'package:app_pdv/core/themes/theme_indigo.dart';
import 'package:app_pdv/core/themes/theme_orange.dart';
import 'package:app_pdv/core/themes/theme_purple.dart';
import 'package:app_pdv/core/themes/theme_red.dart';
import 'package:app_pdv/core/themes/theme_teal.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class ThemeModel extends ChangeNotifier {
  ThemeData _currentTheme = themeOrange;

  ThemeData get currentTheme => _currentTheme;

  ThemeModel() {
    updateTheme();
  }

  updateTheme() {
    _currentTheme = getThemeCustom();
    return notifyListeners();
  }

  ThemeData getThemeCustom() {
    final box = GetStorage();
    final themeColor = strToEnumTema(box.read('tema') ?? 'orange');

    final result = switch (themeColor) {
      ColorTema.blue => themeBlue,
      ColorTema.green => themeGreen,
      ColorTema.grey => themeGrey,
      ColorTema.indigo => themeIndigo,
      ColorTema.orange => themeOrange,
      ColorTema.purple => themePurple,
      ColorTema.red => themeRed,
      ColorTema.teal => themeTeal,
      _ => themeOrange,
    };
    return result;
  }

  ColorTema strToEnumTema(String? value) {
    final result = switch (value) {
      'Blue' => ColorTema.blue,
      'Green' => ColorTema.green,
      'Grey' => ColorTema.grey,
      'Indigo' => ColorTema.indigo,
      'Orange' => ColorTema.orange,
      'Purple' => ColorTema.purple,
      'Red' => ColorTema.red,
      'Teal' => ColorTema.teal,
      _ => ColorTema.orange,
    };
    return result;
  }
}
