import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/auth_controller.dart';
import '../controller/remember_auth.dart';
import '../model/auth_model.dart';
import '../widget/button.dart';
import '../widget/input_field.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final authController = Get.put(AuthController());
  final rememberAuth = Get.put(RememberAuth());
  RxBool check = true.obs;
  RxBool checkLang = false.obs;
  RxBool rememberCheck = true.obs;
  remember() {
    for (int i = 0; i < rememberAuth.list.length; i++) {
      usernameController.text = rememberAuth.list[0].toString();
      passwordController.text = rememberAuth.list[1].toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 250,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40, left: 8, right: 8),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Version 2.0.1',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.blue),
                            ),
                            const Spacer(),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 20, left: 10),
                              child: Obx(
                                () => Visibility(
                                  visible: checkLang.value,
                                  replacement: Row(
                                    children: [
                                      Text(
                                        Get.locale == const Locale('en', 'US')
                                            ? 'language'
                                            : 'ប្តូរភាសារ',
                                        style: const TextStyle(
                                            fontSize: 18, color: Colors.blue),
                                      ),
                                      const SizedBox(width: 8),
                                      GestureDetector(
                                        onTap: () {
                                          (Get.locale ==
                                                  const Locale('en', 'US'))
                                              ? Get.updateLocale(
                                                  const Locale('kh', 'KHR'))
                                              : Get.updateLocale(
                                                  const Locale('en', 'US'));
                                        },
                                        child: SizedBox(
                                          width: 40,
                                          height: 40,
                                          child: Image.asset(
                                            Get.locale ==
                                                    const Locale('en', 'US')
                                                ? 'asset/icons/english.jpg'
                                                : 'asset/icons/khflag.jpg',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  child: const SizedBox(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Obx(() => Visibility(
                      visible: rememberAuth.check.value,
                      replacement: Center(
                        child: GetBuilder<RememberAuth>(
                          init: remember(),
                          builder: (controller) => Container(
                            width: MediaQuery.sizeOf(context).width / 1.16,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.grey,
                                )
                              ],
                            ),
                            margin: const EdgeInsets.only(top: 150),
                            padding: const EdgeInsets.only(bottom: 30, top: 30),
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 10),
                                  Text(
                                    'label'.trArgs([]),
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                  const SizedBox(height: 10),
                                  InputFieldWidget(
                                    controller: usernameController,
                                    hintText: 'hintText'.trArgs([]),
                                    prefixIcon: const Icon(Icons.person),
                                    obscureText: false,
                                  ),
                                  const SizedBox(height: 30),
                                  Text(
                                    'passwordLabel'.trArgs([]),
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                  const SizedBox(height: 10),
                                  Obx(
                                    () => InputFieldWidget(
                                      controller: passwordController,
                                      hintText: 'passworHintText'.trArgs([]),
                                      prefixIcon: const Icon(Icons.lock),
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                          check.value = !check.value;
                                        },
                                        icon: Icon(
                                          check.value == true
                                              ? Icons.visibility_off
                                              : Icons.remove_red_eye,
                                        ),
                                      ),
                                      obscureText: check.value,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Obx(
                                        () => GestureDetector(
                                          onTap: () async {
                                            rememberCheck.value =
                                                !rememberCheck.value;
                                            if (rememberCheck.value == false) {
                                              rememberAuth.addRememberAuth(
                                                AuthModel(
                                                  username:
                                                      usernameController.text,
                                                  password: passwordController
                                                      .text
                                                      .trim(),
                                                ),
                                              );
                                            } else {
                                              rememberAuth.getRememberAuth();
                                            }
                                          },
                                          child: Icon(
                                            rememberCheck.value == false
                                                ? Icons.check_box
                                                : Icons.check_box_outline_blank,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      const Text(
                                        'Remember me',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      child: const SizedBox(),
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13, right: 13, bottom: 40),
              child: GestureDetector(
                onTap: () {
                  authController.loginAuth(
                    AuthModel(
                      username: usernameController.text,
                      password: passwordController.text.trim(),
                    ),
                  );
                },
                child: button('Login'),
              ),
            ),
            const Text(
              'Solution provide by blue Technology',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
