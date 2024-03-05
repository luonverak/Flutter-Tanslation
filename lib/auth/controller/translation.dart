import 'package:get/get.dart';

class MyTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'label': 'Consumers',
          'hintText': 'Input consumers',
          'passwordLabel': 'Password',
          'passworHintText': 'Input consumers',
        },
        'kh_KHR': {
          'label': 'អ្នកប្រើប្រាស់',
          'hintText': 'បញ្ចូលអ្នកប្រើប្រាស់',
          'passwordLabel': 'បញ្ចូលពាក្យសម្ងាត់',
          'passworHintText': 'បញ្ចូលពាក្យសម្ងាត់',
        },
      };
}
