import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled3/screen/theam/theam.dart';

class ThemeProvider with ChangeNotifier {
  bool isDarkMode = false;
  ThemeData _themeData = AppThemes.lightTheme;
  String _themeKey = 'light';

  ThemeData get themeData => _themeData;

  String get themeKey => _themeKey;

  ThemeProvider() {
    loadTheme();
    loadThemeSave();
  }

  void setTheme(String key) {
    _themeKey = key;
    switch (key) {
      case 'dark':
        _themeData = AppThemes.darkTheme;
        break;
      case 'green':
        _themeData = AppThemes.greenTheme;
        break;
      default:
        _themeData = AppThemes.lightTheme;
    }
    _saveThemeToPrefs(key);
    _saveTheme(key);
    notifyListeners();
  }

  void _saveThemeToPrefs(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('theme', key);
  }

  void loadTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? theme = prefs.getString('theme') ?? 'light';
    setTheme(theme);
  }

  /// CupertinoSwitch to toggle dark mode
  void _saveTheme(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('theme', key);
    await prefs.setBool('isDarkMode', isDarkMode);
  }

  void loadThemeSave() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? theme = prefs.getString('theme') ?? 'light';
    isDarkMode = prefs.getBool('isDarkMode') ?? false;
    setTheme(theme);
  }
}
