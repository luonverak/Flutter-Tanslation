import 'package:flutter/material.dart';

class InputFieldWidget extends StatelessWidget {
  InputFieldWidget({
    super.key,
    required this.controller,
    required this.hintText,
    this.suffixIcon,
    this.obscureText,
    required this.prefixIcon,
  });
  var controller = TextEditingController();
  var hintText;
  IconButton? suffixIcon;
  bool? obscureText = false;
  Icon? prefixIcon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: const TextStyle(
        fontSize: 18,
        color: Colors.black,
      ),
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintText: hintText,
        labelStyle: const TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
        suffixIcon: suffixIcon,
      ),
      obscureText: obscureText!,
    );
  }
}
