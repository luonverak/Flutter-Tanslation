import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:translation/button.dart';
import 'package:translation/input.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final consumersController = TextEditingController();
  final passwordController = TextEditingController();

  RxBool check = true.obs;
  RxBool checkLang = false.obs;
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
                  height: 300,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 45, left: 8, right: 8),
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
                            const Text(
                              'Language',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.blue),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 20, left: 10),
                              child: Obx(
                                () => Visibility(
                                  visible: checkLang.value,
                                  replacement: GestureDetector(
                                    onTap: () {
                                      if (Get.locale == Locale('en', 'US')) {
                                        Get.updateLocale(
                                            const Locale('kh', 'KHR'));
                                      } else {
                                        Get.updateLocale(
                                            const Locale('en', 'US'));
                                      }
                                    },
                                    child: SizedBox(
                                      width: 40,
                                      height: 40,
                                      child: Image.asset(
                                        checkLang.value == false
                                            ? 'asset/icon/flag.png'
                                            : 'asset/icon/united-kingdom.png',
                                      ),
                                    ),
                                  ),
                                  child: SizedBox(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: MediaQuery.sizeOf(context).width / 1.17,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 3,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    margin: EdgeInsets.only(top: 170),
                    padding: const EdgeInsets.only(bottom: 60, top: 60),
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
                            controller: consumersController,
                            hintText: 'hintText'.trArgs([]),
                            prefixIcon: const Icon(Icons.person),
                            obscureText: false,
                          ),
                          const SizedBox(height: 20),
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
                          Row(
                            children: [
                              Checkbox(
                                value: false,
                                onChanged: (value) {},
                              ),
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
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 100),
              child: ButtonWidget(
                text: 'Login',
              ),
            ),
            const SizedBox(height: 10),
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
