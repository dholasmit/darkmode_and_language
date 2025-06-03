import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:untitled3/screen/langusge/language_controller.dart';
import 'package:untitled3/screen/langusge/translations.dart';
import 'package:untitled3/screen/setting_Screen.dart';
import 'package:untitled3/screen/theam/theam_provide.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final languageController = Get.put(LanguageController());
  await languageController.loadSavedLanguage();
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final languageController = Get.find<LanguageController>();

    return Obx(
      () => GetMaterialApp(
        title: 'Multi Theme App',
        debugShowCheckedModeBanner: false,
        translations: AppTranslations(),
        theme: themeProvider.themeData,
        locale: languageController.locale.value,
        fallbackLocale: const Locale('en', 'US'),
        home: const SettingScreen(),
      ),
    );
  }
}
