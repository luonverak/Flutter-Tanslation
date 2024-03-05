import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InputFieldWidget extends StatelessWidget {
  InputFieldWidget({
    super.key,
    required this.controller,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText,
  });
  var hintText;
  Icon? prefixIcon;
  var controller = TextEditingController();
  IconButton? suffixIcon;
  bool? obscureText = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1),
      ),
      alignment: Alignment.center,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 18),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          contentPadding: const EdgeInsets.symmetric(horizontal: 4),
        ),
        obscureText: obscureText!,
      ),
    );
  }
}
