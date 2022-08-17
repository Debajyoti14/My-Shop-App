import 'package:flutter/material.dart';

const kDefaultPadding = 20.0;

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;
  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {
  static final darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.grey.shade900,
      primaryColor: Colors.black,
      colorScheme: ColorScheme.dark(),
      iconTheme: IconThemeData(color: Colors.white, opacity: 0.8),
      fontFamily: 'Lato',
      textTheme: TextTheme());

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.white,
    colorScheme: ColorScheme.light(),
    fontFamily: 'Lato',
    iconTheme: IconThemeData(color: Colors.white, opacity: 0.8),
  );
}
