import 'package:flutter/material.dart';

Widget button(var text) {
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15, top: 40),
    child: Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 32, 52, 165),
        borderRadius: BorderRadius.circular(15),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
      ),
    ),
  );
}
