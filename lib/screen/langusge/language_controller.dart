import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageController extends GetxController {
  final locale = const Locale('en', 'US').obs;

  void changeLanguage(String languageCode, String countryCode) async {
    Locale newLocale = Locale(languageCode, countryCode);
    locale.value = newLocale;
    Get.updateLocale(newLocale);

    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('languageCode', languageCode);
    await prefs.setString('countryCode', countryCode);
  }

  Future<void> loadSavedLanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? languageCode = prefs.getString('languageCode') ?? 'en';
    String? countryCode = prefs.getString('countryCode') ?? 'US';
    changeLanguage(languageCode, countryCode);
  }
}
