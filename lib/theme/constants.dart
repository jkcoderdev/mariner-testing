import 'package:flutter/material.dart';

const Map<String, Color> kThemeColorsLight = {
  'primary': Color(0xFF8DDBE0),
  'secondary': Color(0xFFD3FFE9),
  'textPrimary': Color(0xFF090909),
  'textSecondary': Color(0xFF4B5043),
  'background': Color(0xFF282C3A)
};

const Map<String, Color> kThemeColorsDark = {
  'primary': Color(0xFF222047),
  'secondary': Color(0xFF16396D),
  'textPrimary': Color(0xFFDFDFDF),
  'textSecondary': Color(0xFFAAAAAA),
  'background': Color(0xFF9BC4BC)
};

class ThemeColors {
  static get dark => kThemeColorsDark;
  static get light => kThemeColorsLight;

  static of(BuildContext context) {
    final isLightTheme = Theme.of(context).brightness == Brightness.light;

    return isLightTheme ? kThemeColorsLight : kThemeColorsDark;
  }
}

// const kPrimaryLIGHT = Color(0xff8DDBE0);
// const kSecondaryLIGHT = Color(0xffD3FFE9);
// const kTextPrimaryLIGHT = Color(0xff090909);
// const kTextSecondaryLIGHT = Color(0xff4B5043);
// const kBackgroundLIGHT = Color(0xff9BC4BC);


// const kPrimaryDARK = Color(0xff222047);
// const kSecondaryDARK = Color(0xff16396D);
// const kTextPrimaryDARK = Color(0xffDFDFDF);
// const kTextSecondaryDARK = Color(0xffAAAAAA);
// const kBackgroundDARK = Color(0xff282C3A);
