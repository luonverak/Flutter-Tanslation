import 'package:flutter/material.dart';

import '../widget/category.dart';
import '../widget/user_setting.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Welcome',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      drawer: const UserSetting(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'All menu',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SingleChildScrollView(
                child: Wrap(
                  children: [
                    for (int i = 0; i < 5; i++) CategoryWidget(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
