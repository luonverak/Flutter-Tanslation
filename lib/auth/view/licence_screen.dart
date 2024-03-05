import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:translation/auth/view/register_screen.dart';

// ignore: must_be_immutable
class LicenceScreen extends StatelessWidget {
  LicenceScreen({super.key});
  RxBool checkLocal = true.obs;
  RxBool checkCloud = true.obs;
  RxBool checkBC = true.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Choose Licence',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Obx(
                          () => IconButton(
                            onPressed: () async {
                              checkLocal.value = !checkLocal.value;
                            },
                            icon: Icon(
                              checkLocal.value == true
                                  ? Icons.check_box_outline_blank
                                  : Icons.check_box,
                            ),
                          ),
                        ),
                        const Text(
                          'Local',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Obx(
                          () => IconButton(
                            onPressed: () {
                              checkCloud.value = !checkCloud.value;
                            },
                            icon: Icon(
                              checkCloud.value == true
                                  ? Icons.check_box_outline_blank
                                  : Icons.check_box,
                            ),
                          ),
                        ),
                        const Text(
                          'Cloud',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Obx(
                          () => IconButton(
                            onPressed: () {
                              checkBC.value = !checkBC.value;
                            },
                            icon: Icon(
                              checkBC.value == true
                                  ? Icons.check_box_outline_blank
                                  : Icons.check_box,
                            ),
                          ),
                        ),
                        const Text(
                          'BC',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    )
                  ],
                ),
                GestureDetector(
                  onTap: () async {
                    if (checkLocal.value == false) {
                      print('Loca');
                      Get.to(RegisterScreen());
                    } else if (checkCloud.value == false) {
                      print('Cloud');
                      Get.to(RegisterScreen());
                    } else if (checkBC.value == false) {
                      print('bc');
                      Get.to(RegisterScreen());
                    }
                  },
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue[800],
                        borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.center,
                    child: const Text(
                      'Let\'s go',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
