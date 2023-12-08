import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "title".trArgs(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('body'.trArgs(['I love you'])),
            ElevatedButton(
              child: const Text('Change locale to Br'),
              onPressed: () {
                Get.updateLocale(const Locale('pt', 'BR'));
              },
            ),
            ElevatedButton(
              child: const Text('Change locale to English'),
              onPressed: () {
                Get.updateLocale(const Locale('en', 'UK'));
              },
            ),
            ElevatedButton(
              child: const Text('Change locale to Khmer'),
              onPressed: () {
                Get.updateLocale(const Locale('kh', 'KHR'));
              },
            ),
          ],
        ),
      ),
    );
  }
}
