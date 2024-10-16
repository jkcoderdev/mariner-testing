import 'package:flutter/material.dart';
import 'colors.dart';

final lightColors = ThemeColors.light;
final darkColors = ThemeColors.dark;

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  appBarTheme: AppBarTheme(
    backgroundColor: lightColors['primary']
  ),
  scaffoldBackgroundColor: lightColors['background']

);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: AppBarTheme(
    backgroundColor: darkColors['primary']
  ),
  scaffoldBackgroundColor: darkColors['background']
);