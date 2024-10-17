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
  bool _reverse = false;

  ThemeData getThemeData({bool reverse = false}) {

    if(!reverse) {
      _reverse = false;
      return _isDarkMode ? darkTheme : lightTheme;
    } else {
      _reverse = true;
      return !_isDarkMode ? darkTheme : lightTheme;
    }
  }
  
  IconData getThemeIcon(){
    if(!_reverse) { return _isDarkMode ? Icons.light_mode : Icons.dark_mode; }
    else { return !_isDarkMode ? Icons.light_mode : Icons.dark_mode; }

  }

  void switchTheme(){
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }

  void initTheme(BuildContext context){
    _isDarkMode = MediaQuery.of(context).platformBrightness == Brightness.dark;
  }

}