import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/auth_model.dart';

class RememberAuth extends GetxController {
  String userKey = "userKey";
  RxBool check = false.obs;
  List<String> listUser = <String>[];
  RxList<String> list = <String>[].obs;
  @override
  void onInit() {
    getRememberAuth();
    super.onInit();
  }

  Future addRememberAuth(AuthModel authModel) async {
    final prefs = await SharedPreferences.getInstance();
    listUser.add(authModel.username);
    listUser.add(authModel.password);
    await prefs.setStringList(userKey, listUser);
    update();
  }

  Future getRememberAuth() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String>? user = prefs.getStringList(userKey);
    for (int i = 0; i < user!.length; i++) {
      list.add(user[i]);
    }
    update();
  }
}
