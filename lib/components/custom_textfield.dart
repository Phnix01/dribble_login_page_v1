import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield(
      {super.key,
      required this.controller,
      required this.prefixIcon,
      this.suffixIcon,
      this.textInputType,
      required this.hintText,
      required this.obscureText});
  final TextEditingController controller;
  final Icon prefixIcon;
  final IconButton? suffixIcon;
  final TextInputType? textInputType;
  final String hintText;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle:
            TextStyle(fontWeight: FontWeight.w300, color: Colors.grey.shade600),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        filled: true,
        fillColor: Colors.grey.shade100,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15),
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 16,
        ),
      ),
    );
  }
}
