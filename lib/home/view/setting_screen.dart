import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/download.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: const Text('Setting'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                ),
                child: Column(
                  children: [
                    DownloadWidget(
                      image: 'asset/icons/map.png',
                      text: 'Location',
                      text2: 'WH1',
                      textButton: 'Download',
                    ),
                    DownloadWidget(
                      image: 'asset/icons/vendor.png',
                      text: 'Vendor',
                      text2: 'Vendor',
                      textButton: 'Download Vendor',
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MaterialButton(
                    color: Colors.blue,
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.only(
                          left: 15, right: 15, top: 10, bottom: 10),
                      child: Text(
                        'Save',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
