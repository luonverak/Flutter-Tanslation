import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DownloadWidget extends StatelessWidget {
  DownloadWidget(
      {super.key,
      required this.image,
      required this.text,
      required this.text2,
      required this.textButton});
  String image;
  String text;
  String text2;
  String textButton;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, top: 10, left: 5, right: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 45,
            width: 45,
            child: Image.asset(image),
          ),
          const SizedBox(width: 5),
          Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Spacer(),
          Text(
            text2,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Spacer(),
          const SizedBox(width: 10),
          Container(
            width: 150,
            height: 50,
            color: Colors.blue,
            alignment: Alignment.center,
            child: Text(
              textButton,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
