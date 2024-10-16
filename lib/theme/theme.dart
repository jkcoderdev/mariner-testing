import 'package:flutter/material.dart';
import 'constants.dart';

final lightColors = ThemeColors.light;
final darkColors = ThemeColors.dark;

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: lightColors['background']

);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: darkColors['background']
);