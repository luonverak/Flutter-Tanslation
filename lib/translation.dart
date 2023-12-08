import 'package:get/get.dart';

class MyTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'title': 'Hello World from US',
          'body': 'I love you',
        },
        'pt': {
          'title': 'Olá de Portugal',
        },
        'pt_BR': {
          'title': 'Olá do Brasil',
        },
        'kh_KHR': {
          'title': 'សួស្ដី',
          'body': 'បងស្រលាញ់អូន',
        },
      };
}
