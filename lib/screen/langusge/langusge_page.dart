import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/screen/langusge/language_controller.dart';
import 'package:untitled3/screen/langusge/pages.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home_title'.tr),
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert), // The 3-dot icon
            onSelected: (String result) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Selected: $result"),
                  duration: const Duration(seconds: 1),
                ),
              );
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'English',
                child: const Text('English'),
                onTap: () {
                  final languageController = Get.find<LanguageController>();
                  languageController.changeLanguage('en', 'US');
                },
              ),
              PopupMenuItem<String>(
                value: 'Gujarati',
                child: const Text('Gujarati'),
                onTap: () {
                  final languageController = Get.find<LanguageController>();
                  languageController.changeLanguage('gu', 'IN');
                },
              ),
              PopupMenuItem<String>(
                value: 'German',
                child: const Text('German'),
                onTap: () {
                  final languageController = Get.find<LanguageController>();
                  languageController.changeLanguage('de', 'DE');
                },
              ),
              PopupMenuItem<String>(
                value: 'Hindi',
                child: const Text('Hindi'),
                onTap: () {
                  final languageController = Get.find<LanguageController>();
                  languageController.changeLanguage('hi', 'IN');
                },
              ),
            ],
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.language, size: 50),
          const SizedBox(height: 20),
          Text(
            'change_lang'.tr,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _langButton(label: 'English', langCode: 'en', countryCode: 'US'),
              _langButton(label: 'Gujarati', langCode: 'gu', countryCode: 'IN'),
              _langButton(label: 'German', langCode: 'de', countryCode: 'DE'),
              _langButton(label: 'Hindi ', langCode: 'hi', countryCode: 'IN'),
            ],
          ),
          const Divider(),
          ElevatedButton(
              onPressed: () => Get.to(() => const Page11()),
              child: Text("${"page".tr} 1")),
        ],
      ),
    );
  }

  Widget _langButton({
    required String label,
    required String langCode,
    required String countryCode,
  }) {
    final languageController = Get.find<LanguageController>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ElevatedButton(
        onPressed: () =>
            languageController.changeLanguage(langCode, countryCode),
        child: Text(label),
      ),
    );
  }
}
