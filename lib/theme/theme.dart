import 'package:flutter/material.dart';
import 'colors.dart';
import 'package:provider/provider.dart';

final lightColors = ThemeColors.light;
final darkColors = ThemeColors.dark;

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  appBarTheme: AppBarTheme(
    backgroundColor: lightColors['primary']
  ),
  scaffoldBackgroundColor: lightColors['background'],
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: AppBarTheme(
    backgroundColor: darkColors['primary']
  ),
  scaffoldBackgroundColor: darkColors['background']
);






class ThemeDataProvider extends ChangeNotifier{
  bool _isDarkMode = false;

  ThemeData getThemeData() {
    return _isDarkMode ? darkTheme : lightTheme;
  }
  
  IconData getThemeIcon(){
    return _isDarkMode ? Icons.light_mode : Icons.dark_mode;
  }

  void switchTheme(){
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}