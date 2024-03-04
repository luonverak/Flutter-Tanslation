import 'package:get/get.dart';

class MyTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'label': 'Usernmae',
          'hintText': 'Input username',
          'passwordLabel': 'Password',
          'passworHintText': 'Input password'
        },
        'kh_KHR': {
          'label': 'ឈ្មោះ',
          'bodhintTexty': 'បំពេញឈ្មោះ',
          'passwordLabel': 'ពាក្យសម្ងាត់',
          'passworHintText': 'បំពេញពាក្យសម្ងាត់'
        },
      };
}
