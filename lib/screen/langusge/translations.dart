import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'home_title': 'Home Page',
          'welcome': 'Welcome',
          'page': 'Page',
          'change_lang': 'Change Language',
        },
        'gu_IN': {
          'home_title': 'હોમ પેજ',
          'welcome': 'સ્વાગત છે',
          'page': 'પૃષ્ઠ',
          'change_lang': 'ભાષા બદલો',
        },
        'de_DE': {
          'home_title': 'Startseite',
          'welcome': 'Willkommen',
          'page': 'Seite',
          'change_lang': 'Sprache ändern',
        },
        'hi_IN': {
          'home_title': 'मुख्य पृष्ठ',
          'welcome': 'स्वागत है',
          'page': 'पृष्ठ',
          'change_lang': 'भाषा बदलें',
        }
      };
}
