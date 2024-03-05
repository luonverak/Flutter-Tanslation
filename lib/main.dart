import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:translation/auth/controller/db_controller.dart';
import 'auth/controller/translation.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.native,
      translations: MyTranslations(),
      locale: const Locale('en', 'US'),
      home: LoadinScreen(),
      navigatorKey: Get.key,
    );
  }
}

class LoadinScreen extends StatelessWidget {
  LoadinScreen({super.key});
  final check = Get.put(DBController());
  RxBool loading = true.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Visibility(
          visible: loading.value,
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
