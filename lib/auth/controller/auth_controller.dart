
import 'package:get/get.dart';
import 'package:translation/home/view/home_screen.dart';

import '../model/auth_model.dart';

class AuthController extends GetxController {
  Future loginAuth(AuthModel authModel) async {
    if (authModel.username == 'sok' && authModel.password == 'sok123') {
      Get.offAll(HomeScreen());
      Get.snackbar('Success', 'Account has been login');
    } else {
      Get.snackbar('Invalid', 'Something wrong');
    }
    update();
  }
}
