import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:translation/home_screen.dart';
import 'package:translation/translation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      defaultTransition: Transition.native,
      translations: MyTranslations(),
      locale: const Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
